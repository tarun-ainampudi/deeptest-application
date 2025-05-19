.class public Lcom/coui/appcompat/widget/COUIDatePicker;
.super Landroid/widget/FrameLayout;
.source "COUIDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIDatePicker$Format;,
        Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;,
        Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;,
        Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final A_LEAP_YEAR:I = 0x7e4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final HOURS_OF_HALF_DAY:I = 0xc

.field public static final IGNORED_YEAR:I = -0x80000000

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final LONGPRESS_UPDATE_INTERVAL:I = 0x64

.field private static final MD_FORMAT:Ljava/lang/String; = "MM/dd"

.field private static final MONTH_LONGPRESS_UPDATE_INTERVAL:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "COUIDatePicker"

.field private static sOrderEn:[C


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDayFormat:Lcom/coui/appcompat/widget/COUIDatePicker$Format;

.field private final mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private mFocusColor:I

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthFormat:Lcom/coui/appcompat/widget/COUIDatePicker$Format;

.field private final mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private mNormalColor:I

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

.field private mYearFormat:Lcom/coui/appcompat/widget/COUIDatePicker$Format;

.field private mYearIgnorable:Z

.field private final mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/coui/appcompat/widget/COUIDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUIDatePicker;->LOG_TAG:Ljava/lang/String;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coui/appcompat/widget/COUIDatePicker;->sOrderEn:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x64s
        0x4ds
        0x79s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 112
    sget v0, Lcoui/support/appcompat/R$attr;->couiDatePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDateFormat:Ljava/text/DateFormat;

    .line 90
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mIsEnabled:Z

    .line 126
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 127
    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 131
    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUIDatePicker:[I

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual {v1, v5, v4, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 133
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    sget v7, Lcoui/support/appcompat/R$styleable;->COUIDatePicker_spinnerShown:I

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 134
    .local v7, "spinnersShown":Z
    sget v8, Lcoui/support/appcompat/R$styleable;->COUIDatePicker_calendarViewShown:I

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 136
    .local v8, "calendarViewShown":Z
    sget v9, Lcoui/support/appcompat/R$styleable;->COUIDatePicker_beginYear:I

    const/16 v10, 0x76c

    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 137
    .local v9, "startYear":I
    sget v10, Lcoui/support/appcompat/R$styleable;->COUIDatePicker_endYear:I

    const/16 v11, 0x834

    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 138
    .local v10, "endYear":I
    sget v11, Lcoui/support/appcompat/R$styleable;->COUIDatePicker_minDate:I

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 139
    .local v11, "minDate":Ljava/lang/String;
    sget v12, Lcoui/support/appcompat/R$styleable;->COUIDatePicker_maxDate:I

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, "maxDate":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcoui/support/appcompat/R$array;->coui_solor_mounth:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 141
    sget v13, Lcoui/support/appcompat/R$styleable;->COUIDatePicker_calendarTextColor:I

    const/4 v14, -0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mNormalColor:I

    .line 142
    sget v13, Lcoui/support/appcompat/R$styleable;->COUIDatePicker_calendarSelectedTextColor:I

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    iput v13, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mFocusColor:I

    .line 143
    sget v13, Lcoui/support/appcompat/R$layout;->coui_date_picker:I

    .line 145
    .local v13, "layoutResourceId":I
    sget v14, Lcoui/support/appcompat/R$styleable;->COUIDatePicker_couiYearIgnorable:I

    invoke-virtual {v4, v14, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    iput-boolean v14, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearIgnorable:Z

    .line 147
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    const-string v14, "layout_inflater"

    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 151
    .local v14, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v14, v13, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 153
    new-instance v15, Lcom/coui/appcompat/widget/COUIDatePicker$1;

    invoke-direct {v15, v0}, Lcom/coui/appcompat/widget/COUIDatePicker$1;-><init>(Lcom/coui/appcompat/widget/COUIDatePicker;)V

    .line 174
    .local v15, "onChangeListener":Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;
    sget v2, Lcoui/support/appcompat/R$id;->pickers:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 176
    new-instance v2, Lcom/coui/appcompat/widget/COUIDatePicker$Format;

    sget v3, Lcoui/support/appcompat/R$string;->coui_year:I

    const-string v1, "YEAR"

    invoke-direct {v2, v0, v3, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$Format;-><init>(Lcom/coui/appcompat/widget/COUIDatePicker;ILjava/lang/String;)V

    iput-object v2, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearFormat:Lcom/coui/appcompat/widget/COUIDatePicker$Format;

    .line 177
    new-instance v1, Lcom/coui/appcompat/widget/COUIDatePicker$Format;

    sget v2, Lcoui/support/appcompat/R$string;->coui_month:I

    const-string v3, "MONTH"

    invoke-direct {v1, v0, v2, v3}, Lcom/coui/appcompat/widget/COUIDatePicker$Format;-><init>(Lcom/coui/appcompat/widget/COUIDatePicker;ILjava/lang/String;)V

    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthFormat:Lcom/coui/appcompat/widget/COUIDatePicker$Format;

    .line 178
    new-instance v1, Lcom/coui/appcompat/widget/COUIDatePicker$Format;

    sget v2, Lcoui/support/appcompat/R$string;->coui_day:I

    const-string v3, "DAY"

    invoke-direct {v1, v0, v2, v3}, Lcom/coui/appcompat/widget/COUIDatePicker$Format;-><init>(Lcom/coui/appcompat/widget/COUIDatePicker;ILjava/lang/String;)V

    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDayFormat:Lcom/coui/appcompat/widget/COUIDatePicker$Format;

    .line 181
    sget v1, Lcoui/support/appcompat/R$id;->day:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 182
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 183
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 186
    sget v1, Lcoui/support/appcompat/R$id;->month:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 187
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 188
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v2, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mNumberOfMonths:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 190
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 191
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 194
    sget v1, Lcoui/support/appcompat/R$id;->year:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 195
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 196
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 197
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-boolean v2, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearIgnorable:Z

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setIgnorable(Z)V

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateSpinnerColor()V

    .line 202
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 203
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker;->setSpinnersShown(Z)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v0, v7}, Lcom/coui/appcompat/widget/COUIDatePicker;->setSpinnersShown(Z)V

    .line 206
    invoke-virtual {v0, v8}, Lcom/coui/appcompat/widget/COUIDatePicker;->setCalendarViewShown(Z)V

    .line 210
    :goto_0
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->clear()V

    .line 211
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v11, v1}, Lcom/coui/appcompat/widget/COUIDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v3, v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(III)V

    goto :goto_1

    .line 216
    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v1, v9, v3, v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(III)V

    .line 218
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIDatePicker;->setMinDate(J)V

    .line 221
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->clear()V

    .line 222
    const/16 v1, 0xb

    .line 223
    .local v1, "lastMonth":I
    const/16 v2, 0x1f

    .line 224
    .local v2, "lastDay":I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 225
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {v0, v12, v3}, Lcom/coui/appcompat/widget/COUIDatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 226
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v3, v10, v1, v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(III)V

    goto :goto_2

    .line 229
    :cond_3
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v3, v10, v1, v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(III)V

    .line 231
    :cond_4
    :goto_2
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v3

    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "lastMonth":I
    .end local v2    # "lastDay":I
    .local v16, "lastMonth":I
    .local v17, "lastDay":I
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIDatePicker;->setMaxDate(J)V

    .line 234
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 235
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v1

    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    move-object/from16 v18, v4

    .end local v4    # "attributesArray":Landroid/content/res/TypedArray;
    .local v18, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v4, 0x5

    .line 236
    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v3

    const/4 v4, 0x0

    .line 235
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/widget/COUIDatePicker;->init(IIILcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->reorderSpinners()V

    .line 241
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->isAccessibilityEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$string;->picker_talkback_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "talkbackTip":Ljava/lang/String;
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 244
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 245
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 247
    .end local v1    # "talkbackTip":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker;

    .line 51
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker;

    .line 51
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/coui/appcompat/widget/COUIDatePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker;

    .line 51
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/coui/appcompat/widget/COUIDatePicker;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker;

    .line 51
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker;

    .line 51
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker;

    .line 51
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUIDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker;

    .line 51
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUIDatePicker;Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker;
    .param p1, "x1"    # Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 51
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->setDate(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUIDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker;

    .line 51
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUIDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker;

    .line 51
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUIDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUIDatePicker;

    .line 51
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->notifyDateChanged()V

    return-void
.end method

.method private clampDate()V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->clampDate(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 634
    return-void
.end method

.method private formatDate()Ljava/lang/String;
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->access$1000(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const/16 v0, 0x14

    .line 252
    .local v0, "flags":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v4, 0x14

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 254
    .end local v0    # "flags":I
    :cond_0
    const/16 v0, 0x18

    .line 255
    .restart local v0    # "flags":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-static {v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v4, 0x18

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAlignPosition(I)I
    .locals 1
    .param p1, "i"    # I

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "alignPosition":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 537
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 534
    :pswitch_1
    const/4 v0, 0x0

    .line 535
    goto :goto_0

    .line 531
    :pswitch_2
    const/4 v0, 0x2

    .line 532
    nop

    .line 540
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCalendarForLocale(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;
    .locals 3
    .param p1, "oldCalendar"    # Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 468
    if-nez p1, :cond_0

    .line 469
    new-instance v0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-direct {v0, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    return-object v0

    .line 471
    :cond_0
    new-instance v0, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-direct {v0, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    .line 472
    .local v0, "newCalendar":Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->access$1000(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->getTimeInMillis()J

    move-result-wide v1

    .line 474
    .local v1, "currentTimeMillis":J
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 475
    .end local v1    # "currentTimeMillis":J
    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)V

    .line 478
    :goto_0
    return-object v0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 483
    if-nez p1, :cond_0

    .line 484
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    .line 486
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 487
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 488
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 489
    return-object v2
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 614
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v2, 0x2

    .line 615
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v2, 0x5

    .line 616
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 4

    .line 750
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->sendAccessibilityEvent(I)V

    .line 751
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;->onDateChanged(Lcom/coui/appcompat/widget/COUIDatePicker;III)V

    .line 754
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    const/4 v0, 0x1

    return v0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    return v1
.end method

.method private reorderSpinners()V
    .locals 5

    .line 494
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyyMMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v1, "spinnerOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    const/16 v4, 0x79

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 517
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 518
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 519
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker;->getAlignPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setAlignPosition(I)V

    .line 520
    const-string v3, "y"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 503
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 504
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 505
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker;->getAlignPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setAlignPosition(I)V

    .line 506
    const-string v3, "d"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 510
    :cond_3
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 511
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker;->getAlignPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setAlignPosition(I)V

    .line 513
    const-string v3, "M"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 455
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    return-void

    .line 458
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 459
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->getCalendarForLocale(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 460
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 461
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 462
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->getCalendarForLocale(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 463
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->getActualMaximum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mNumberOfMonths:I

    .line 464
    iget v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mNumberOfMonths:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 465
    return-void
.end method

.method private setDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 620
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->set(III)V

    .line 621
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->clampDate()V

    .line 622
    return-void
.end method

.method private setDate(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)V
    .locals 1
    .param p1, "date"    # Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 625
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;)V

    .line 626
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->clampDate()V

    .line 627
    return-void
.end method

.method private updateCalendarView()V
    .locals 0

    .line 717
    return-void
.end method

.method private updateSpinnerColor()V
    .locals 3

    .line 356
    iget v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mNormalColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mNormalColor:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerNormalColor(I)V

    .line 358
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mNormalColor:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerNormalColor(I)V

    .line 359
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mNormalColor:I

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerNormalColor(I)V

    .line 362
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mFocusColor:I

    if-eq v0, v1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mFocusColor:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerFocusColor(I)V

    .line 364
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mFocusColor:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerFocusColor(I)V

    .line 365
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mFocusColor:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerFocusColor(I)V

    .line 367
    :cond_1
    return-void
.end method

.method private updateSpinners()V
    .locals 7

    .line 637
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthFormat:Lcom/coui/appcompat/widget/COUIDatePicker$Format;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;)V

    .line 638
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 639
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 640
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 641
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 642
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_3

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 644
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 645
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 646
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 647
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 648
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_3

    .line 649
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 650
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 651
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 652
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 653
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 654
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 653
    move v2, v1

    goto :goto_2

    .line 654
    :cond_4
    nop

    .line 653
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_3

    .line 656
    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 657
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 658
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 662
    :goto_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x5

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 663
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 664
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 665
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 666
    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 667
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 668
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_7

    move v3, v1

    nop

    :cond_7
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_5

    .line 669
    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 670
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v0, v2, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 671
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 672
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_b

    .line 673
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 674
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 675
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_a

    move v3, v1

    nop

    :cond_a
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto/16 :goto_5

    .line 676
    :cond_b
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 677
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 678
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 679
    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_d

    .line 680
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 681
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 682
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ne v2, v6, :cond_c

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 683
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_c

    .line 682
    move v3, v1

    goto :goto_4

    .line 683
    :cond_c
    nop

    .line 682
    :goto_4
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_5

    .line 685
    :cond_d
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v5}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 686
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v5}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 687
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 692
    :goto_5
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMinValue()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 693
    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMaxValue()I

    move-result v3

    add-int/2addr v3, v1

    .line 692
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    .line 697
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 698
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 699
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 700
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearFormat:Lcom/coui/appcompat/widget/COUIDatePicker$Format;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;)V

    .line 702
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 703
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 704
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v2, v5}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 705
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDayFormat:Lcom/coui/appcompat/widget/COUIDatePicker$Format;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;)V

    .line 706
    const/16 v1, 0x1b

    .line 707
    .local v1, "dayInvalidate":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v2

    if-le v2, v1, :cond_e

    .line 708
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->invalidate()V

    .line 710
    :cond_e
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 389
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 567
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 568
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    return v0
.end method

.method public getOnDateChangedListener()Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;

    return-object v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;

    .line 594
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIDatePicker;->setDate(III)V

    .line 595
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateSpinners()V

    .line 596
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateCalendarView()V

    .line 597
    iput-object p4, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;

    .line 598
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .line 544
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 404
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 405
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 395
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 397
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->formatDate()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 578
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;

    .line 579
    .local v0, "ss":Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 580
    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;->access$1200(Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;)I

    move-result v1

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;->access$1300(Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;)I

    move-result v2

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;->access$1400(Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUIDatePicker;->setDate(III)V

    .line 581
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateSpinners()V

    .line 582
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateCalendarView()V

    .line 583
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 572
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v6

    .line 573
    .local v6, "superState":Landroid/os/Parcelable;
    new-instance v7, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUIDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/coui/appcompat/widget/COUIDatePicker$1;)V

    return-object v7
.end method

.method public refresh()V
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 1040
    :cond_2
    return-void
.end method

.method public scrollForceFinished()V
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 1023
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 1025
    :cond_2
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .param p1, "backgroundResID"    # I

    .line 332
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUIDatePicker;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 323
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUIDatePicker;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    return-void
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .line 424
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 376
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 377
    return-void

    .line 379
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 384
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mIsEnabled:Z

    .line 385
    return-void
.end method

.method public setFocusColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 351
    iput p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mFocusColor:I

    .line 352
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateSpinnerColor()V

    .line 353
    return-void
.end method

.method public setMaxDate(J)V
    .locals 3
    .param p1, "maxDate"    # J

    .line 305
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 306
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 307
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 312
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->after(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 314
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateCalendarView()V

    .line 316
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateSpinners()V

    .line 317
    return-void
.end method

.method public setMinDate(J)V
    .locals 3
    .param p1, "minDate"    # J

    .line 275
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 276
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    .line 277
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 278
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 282
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->before(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 284
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateCalendarView()V

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateSpinners()V

    .line 287
    return-void
.end method

.method public setNormalColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 341
    iput p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mNormalColor:I

    .line 342
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateSpinnerColor()V

    .line 343
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1
    .param p1, "normalTextColor"    # I

    .line 1048
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 1055
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 1057
    :cond_2
    return-void
.end method

.method public setOnDateChangedListener(Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "onDateChangedListener"    # Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;

    .line 771
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/widget/COUIDatePicker$OnDateChangedListener;

    .line 772
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 451
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 555
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUIDatePicker;->setDate(III)V

    .line 559
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateSpinners()V

    .line 560
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->updateCalendarView()V

    .line 561
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIDatePicker;->notifyDateChanged()V

    .line 562
    return-void
.end method
