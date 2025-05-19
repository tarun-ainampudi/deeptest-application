.class public Lcom/coui/appcompat/widget/COUILunarDatePicker;
.super Landroid/widget/FrameLayout;
.source "COUILunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;,
        Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;,
        Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final CHINESE_NUMBER:[Ljava/lang/String;

.field private static final DAY_OF_REFRESH_SPINNER:I = 0x1b

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_DAY:I = 0x1f

.field private static final DEFAULT_END_HOUR:I = 0x17

.field private static final DEFAULT_END_MINUTE:I = 0x3b

.field private static final DEFAULT_END_MONTH:I = 0xb

.field private static final DEFAULT_END_YEAR:I = 0x7f4

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x776

.field public static final IGNORED_YEAR:I = -0x80000000

.field private static final IGNORED_YEAR_MONTH_COUNT:I = 0x18

.field private static final LEAPYEAR_MONTH_COUNT:I = 0xd

.field private static final LONGPRESS_UPDATE_INTERVAL:I = 0x64

.field private static final MONTH_LONGPRESS_UPDATE_INTERVAL:I = 0xc8

.field private static final NORMAL_MONTH_COUNT:I = 0xc

.field private static final PICKER_CHILD_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static sLeapString:Ljava/lang/String;

.field private static sMaxDate:Ljava/util/Calendar;

.field private static sMinDate:Ljava/util/Calendar;


# instance fields
.field private mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private mIsEnabled:Z

.field private final mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

.field private mYearIgnorable:Z

.field private final mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 52
    const-class v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->TAG:Ljava/lang/String;

    .line 71
    const-string v1, "\u4e00"

    const-string v2, "\u4e8c"

    const-string v3, "\u4e09"

    const-string v4, "\u56db"

    const-string v5, "\u4e94"

    const-string v6, "\u516d"

    const-string v7, "\u4e03"

    const-string v8, "\u516b"

    const-string v9, "\u4e5d"

    const-string v10, "\u5341"

    const-string v11, "\u5341\u4e00"

    const-string v12, "\u5341\u4e8c"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->CHINESE_NUMBER:[Ljava/lang/String;

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    .line 79
    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/16 v2, 0x776

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    .line 84
    sget-object v7, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    const/16 v8, 0x7f4

    const/16 v9, 0xb

    const/16 v10, 0x1f

    const/16 v11, 0x17

    const/16 v12, 0x3b

    invoke-virtual/range {v7 .. v12}, Ljava/util/Calendar;->set(IIIII)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 119
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    const/16 v2, 0xc

    iput v2, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mNumberOfMonths:I

    .line 102
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mIsEnabled:Z

    .line 133
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 137
    sget-object v4, Lcoui/support/appcompat/R$styleable;->COUILunarDatePicker:[I

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual {v1, v5, v4, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 138
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v7, Lcoui/support/appcompat/R$styleable;->COUILunarDatePicker_couiYearIgnorable:I

    invoke-virtual {v4, v7, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearIgnorable:Z

    .line 139
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    const/4 v7, 0x1

    .line 143
    .local v7, "spinnersShown":Z
    const/4 v8, 0x1

    .line 144
    .local v8, "calendarViewShown":Z
    const/16 v9, 0x776

    .line 145
    .local v9, "startYear":I
    const/16 v16, 0x7f4

    .line 146
    .local v16, "endYear":I
    sget v15, Lcoui/support/appcompat/R$layout;->coui_lunar_date_picker:I

    .line 148
    .local v15, "layoutResourceId":I
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcoui/support/appcompat/R$array;->coui_lunar_mounth:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 149
    const-string v10, "layout_inflater"

    .line 150
    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Landroid/view/LayoutInflater;

    .line 151
    .local v14, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v14, v15, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcoui/support/appcompat/R$string;->coui_lunar_leap_string:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    .line 153
    new-instance v10, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;

    invoke-direct {v10, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$1;-><init>(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V

    move-object v13, v10

    .line 180
    .local v13, "onChangeListener":Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;
    sget v10, Lcoui/support/appcompat/R$id;->pickers:I

    invoke-virtual {v0, v10}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 183
    sget v10, Lcoui/support/appcompat/R$id;->day:I

    invoke-virtual {v0, v10}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 184
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const-wide/16 v11, 0x64

    invoke-virtual {v10, v11, v12}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 185
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v10, v13}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 187
    sget v10, Lcoui/support/appcompat/R$id;->month:I

    invoke-virtual {v0, v10}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 188
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v10, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 189
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mNumberOfMonths:I

    sub-int/2addr v3, v2

    invoke-virtual {v10, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 190
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 191
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const-wide/16 v11, 0xc8

    invoke-virtual {v3, v11, v12}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 192
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3, v13}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 194
    sget v3, Lcoui/support/appcompat/R$id;->year:I

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 195
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const-wide/16 v10, 0x64

    invoke-virtual {v3, v10, v11}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 196
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3, v13}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 197
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-boolean v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearIgnorable:Z

    invoke-virtual {v3, v10}, Lcom/coui/appcompat/widget/COUINumberPicker;->setIgnorable(Z)V

    .line 201
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 202
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setSpinnersShown(Z)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v0, v7}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setSpinnersShown(Z)V

    .line 205
    invoke-virtual {v0, v8}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setCalendarViewShown(Z)V

    .line 209
    :goto_0
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->clear()V

    .line 210
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->set(III)V

    .line 211
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setMinDate(J)V

    .line 214
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->clear()V

    .line 215
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/16 v12, 0xb

    const/16 v3, 0x1f

    const/16 v17, 0x17

    const/16 v18, 0x3b

    move/from16 v11, v16

    move-object/from16 v19, v13

    .end local v13    # "onChangeListener":Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;
    .local v19, "onChangeListener":Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;
    move v13, v3

    move-object v3, v14

    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .local v3, "inflater":Landroid/view/LayoutInflater;
    move/from16 v14, v17

    move/from16 v17, v15

    .end local v15    # "layoutResourceId":I
    .local v17, "layoutResourceId":I
    move/from16 v15, v18

    invoke-virtual/range {v10 .. v15}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->set(IIIII)V

    .line 216
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v10}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setMaxDate(J)V

    .line 219
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 220
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v10, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v2

    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v10

    iget-object v11, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v12, 0x5

    .line 221
    invoke-virtual {v11, v12}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v11

    const/4 v12, 0x0

    .line 220
    invoke-virtual {v0, v2, v10, v11, v12}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->init(IIILcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;)V

    .line 223
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->isAccessibilityEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcoui/support/appcompat/R$string;->picker_talkback_tip:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "talkbackTip":Ljava/lang/String;
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v10, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 226
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v10, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 227
    iget-object v10, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v10, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 229
    .end local v2    # "talkbackTip":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker;

    .line 46
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker;

    .line 46
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker;

    .line 46
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker;

    .line 46
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUILunarDatePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker;

    .line 46
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUILunarDatePicker;Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker;
    .param p1, "x1"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 46
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setDate(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker;

    .line 46
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker;

    .line 46
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUILunarDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUILunarDatePicker;

    .line 46
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->notifyDateChanged()V

    return-void
.end method

.method private clampDate()V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    sget-object v2, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->clampDate(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 549
    return-void
.end method

.method private getCalendarForLocale(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;
    .locals 3
    .param p1, "oldCalendar"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 423
    if-nez p1, :cond_0

    .line 424
    new-instance v0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-direct {v0, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    return-object v0

    .line 426
    :cond_0
    new-instance v0, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-direct {v0, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;-><init>(Ljava/util/Locale;)V

    .line 427
    .local v0, "newCalendar":Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->access$900(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 428
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->getTimeInMillis()J

    move-result-wide v1

    .line 429
    .local v1, "currentTimeMillis":J
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 430
    .end local v1    # "currentTimeMillis":J
    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)V

    .line 433
    :goto_0
    return-object v0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 438
    if-nez p1, :cond_0

    .line 439
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    .line 441
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 442
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 443
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 444
    return-object v2
.end method

.method private static getLunarDateString(IIII)Ljava/lang/String;
    .locals 3
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "leapMonthCode"    # I

    .line 255
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->CHINESE_NUMBER:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {p2}, Lcom/coui/appcompat/widget/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_2

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->CHINESE_NUMBER:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-static {p2}, Lcom/coui/appcompat/widget/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "lunarDateString":Ljava/lang/String;
    :goto_2
    return-object v0
.end method

.method public static getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8
    .param p0, "cal"    # Ljava/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 244
    .local v1, "gregorianYear":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 245
    .local v3, "gregorianMonth":I
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 247
    .local v4, "gregorianDay":I
    invoke-static {v1, v3, v4}, Lcom/coui/appcompat/widget/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v5

    .line 249
    .local v5, "lunarDate":[I
    const/4 v6, 0x0

    aget v6, v5, v6

    aget v0, v5, v0

    aget v2, v5, v2

    const/4 v7, 0x3

    aget v7, v5, v7

    invoke-static {v6, v0, v2, v7}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLunarDateString2(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)Ljava/lang/String;
    .locals 8
    .param p0, "cal"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v1

    .line 233
    .local v1, "gregorianYear":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 234
    .local v3, "gregorianMonth":I
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v4

    .line 236
    .local v4, "gregorianDay":I
    invoke-static {v1, v3, v4}, Lcom/coui/appcompat/widget/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v5

    .line 238
    .local v5, "lunarDate":[I
    const/4 v6, 0x0

    aget v6, v5, v6

    aget v0, v5, v0

    aget v2, v5, v2

    const/4 v7, 0x3

    aget v7, v5, v7

    invoke-static {v6, v0, v2, v7}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 529
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v2, 0x2

    .line 530
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v2, 0x5

    .line 531
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_0

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

    .line 713
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sendAccessibilityEvent(I)V

    .line 714
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;->onLunarDateChanged(Lcom/coui/appcompat/widget/COUILunarDatePicker;III)V

    .line 717
    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 5

    .line 449
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 450
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 451
    .local v0, "order":[C
    array-length v1, v0

    .line 452
    .local v1, "spinnerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 453
    aget-char v3, v0, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x64

    if-eq v3, v4, :cond_1

    const/16 v4, 0x79

    if-ne v3, v4, :cond_0

    .line 463
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setImeOptions(Lcom/coui/appcompat/widget/COUINumberPicker;II)V

    .line 465
    goto :goto_1

    .line 467
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 455
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 456
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setImeOptions(Lcom/coui/appcompat/widget/COUINumberPicker;II)V

    .line 457
    goto :goto_1

    .line 459
    :cond_2
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setImeOptions(Lcom/coui/appcompat/widget/COUINumberPicker;II)V

    .line 461
    nop

    .line 452
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 470
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 410
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    return-void

    .line 414
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 416
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getCalendarForLocale(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 417
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    .line 418
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    .line 419
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getCalendarForLocale(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;Ljava/util/Locale;)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 420
    return-void
.end method

.method private setDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 535
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->set(III)V

    .line 536
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->clampDate()V

    .line 537
    return-void
.end method

.method private setDate(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)V
    .locals 1
    .param p1, "date"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 543
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setWith(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)V

    .line 544
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->clampDate()V

    .line 545
    return-void
.end method

.method private setImeOptions(Lcom/coui/appcompat/widget/COUINumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/coui/appcompat/widget/COUINumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .line 722
    add-int/lit8 v0, p2, -0x1

    if-ge p3, v0, :cond_0

    .line 723
    const/4 v0, 0x5

    goto :goto_0

    .line 725
    :cond_0
    const/4 v0, 0x6

    .line 729
    .local v0, "imeOptions":I
    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getChildCount()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 730
    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->TAG:Ljava/lang/String;

    const-string v2, "spinner.getChildCount() != 3,It isn\'t init ok.return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void

    .line 734
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 735
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 736
    return-void
.end method

.method private updateCalendarView()V
    .locals 0

    .line 680
    return-void
.end method

.method private updateSpinners()V
    .locals 28

    .line 552
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 553
    .local v1, "isLeapYear":Z
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v2

    .line 554
    .local v2, "gregorianYear":I
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 555
    .local v4, "gregorianMonth":I
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v6

    .line 556
    .local v6, "gregorianDay":I
    invoke-static {v2, v4, v6}, Lcom/coui/appcompat/widget/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v8

    .line 557
    .local v8, "lunarDate":[I
    const/4 v9, 0x0

    aget v10, v8, v9

    invoke-static {v10}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v10

    .line 558
    .local v10, "leapMonth":I
    aget v11, v8, v3

    .line 559
    .local v11, "monthIndexDisplay":I
    iget-object v12, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-static {v12}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getLunarDateString2(Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;)Ljava/lang/String;

    move-result-object v12

    .line 562
    .local v12, "lunarDateString":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 563
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 564
    :cond_0
    if-ge v11, v10, :cond_1

    if-eqz v10, :cond_1

    .line 565
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 566
    :cond_1
    if-ne v11, v10, :cond_2

    sget-object v13, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 567
    add-int/lit8 v11, v11, -0x1

    .line 570
    :cond_2
    :goto_0
    const/high16 v13, -0x80000000

    if-ne v2, v13, :cond_3

    const/4 v14, 0x3

    aget v14, v8, v14

    if-nez v14, :cond_3

    .line 572
    add-int/lit8 v11, v11, 0xc

    .line 575
    :cond_3
    const/16 v14, 0xd

    const/16 v15, 0x18

    const/16 v7, 0xc

    if-ne v2, v13, :cond_4

    .line 576
    iput v15, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mNumberOfMonths:I

    goto :goto_1

    .line 577
    :cond_4
    if-eqz v10, :cond_5

    .line 578
    iput v14, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mNumberOfMonths:I

    .line 579
    const/4 v1, 0x1

    goto :goto_1

    .line 581
    :cond_5
    iput v7, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mNumberOfMonths:I

    .line 584
    :goto_1
    aget v14, v8, v9

    aget v7, v8, v3

    invoke-static {v14, v7}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v7

    .line 585
    .local v7, "monthCountDays":I
    if-eqz v10, :cond_6

    if-ne v11, v10, :cond_6

    sget-object v14, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    .line 586
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 587
    aget v14, v8, v9

    invoke-static {v14}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v7

    .line 591
    :cond_6
    iget-object v14, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    sget-object v15, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v14, v15}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->beforeOrEqual(Ljava/util/Calendar;)Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_7

    .line 592
    iget-object v14, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v14, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 593
    iget-object v14, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    aget v13, v8, v5

    invoke-virtual {v14, v13}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 594
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 595
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 596
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 597
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v11}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 598
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v14, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mNumberOfMonths:I

    sub-int/2addr v14, v3

    invoke-virtual {v13, v14}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 599
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_2

    .line 600
    :cond_7
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    sget-object v14, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v13, v14}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->afterOrEqual(Ljava/util/Calendar;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 601
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 602
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 603
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    aget v14, v8, v5

    invoke-virtual {v13, v14}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 604
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 605
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 606
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 607
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v11}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 608
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_2

    .line 610
    :cond_8
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 611
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 612
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 613
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 614
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 615
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 616
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget v14, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mNumberOfMonths:I

    sub-int/2addr v14, v3

    invoke-virtual {v13, v14}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 617
    iget-object v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v13, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 620
    :goto_2
    iget v13, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mNumberOfMonths:I

    new-array v13, v13, [Ljava/lang/String;

    .line 621
    .local v13, "displayedMonths":[Ljava/lang/String;
    iget v14, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mNumberOfMonths:I

    new-array v14, v14, [Ljava/lang/String;

    .line 622
    .local v14, "displayedLeapMonth":[Ljava/lang/String;
    const/high16 v15, -0x80000000

    if-ne v2, v15, :cond_a

    .line 623
    move v15, v9

    .local v15, "i":I
    :goto_3
    const/16 v9, 0x18

    if-ge v15, v9, :cond_e

    .line 624
    const/16 v9, 0xc

    if-ge v15, v9, :cond_9

    .line 625
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v9, v9, v15

    aput-object v9, v13, v15

    goto :goto_4

    .line 627
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v17, v15, -0xc

    aget-object v5, v5, v17

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v15

    .line 623
    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x2

    const/4 v9, 0x0

    goto :goto_3

    .line 630
    .end local v15    # "i":I
    :cond_a
    if-eqz v1, :cond_d

    .line 631
    const/4 v5, 0x0

    .line 632
    .local v5, "i":I
    :goto_5
    if-ge v5, v10, :cond_b

    .line 633
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v9, v9, v5

    aput-object v9, v14, v5

    .line 632
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 635
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sLeapString:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v18, v10, -0x1

    aget-object v15, v15, v18

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v10

    .line 636
    add-int/2addr v5, v3

    .line 637
    :goto_6
    const/16 v9, 0xd

    if-ge v5, v9, :cond_c

    .line 638
    iget-object v15, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v17, v5, -0x1

    aget-object v15, v15, v17

    aput-object v15, v14, v5

    .line 637
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 640
    :cond_c
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 641
    invoke-virtual {v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMinValue()I

    move-result v9

    iget-object v15, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMaxValue()I

    move-result v15

    add-int/2addr v15, v3

    .line 640
    invoke-static {v14, v9, v15}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, [Ljava/lang/String;

    .line 642
    .end local v5    # "i":I
    goto :goto_7

    .line 643
    :cond_d
    iget-object v5, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 644
    invoke-virtual {v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMinValue()I

    move-result v9

    iget-object v15, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMaxValue()I

    move-result v15

    add-int/2addr v15, v3

    .line 643
    invoke-static {v5, v9, v15}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, [Ljava/lang/String;

    .line 646
    :cond_e
    :goto_7
    iget-object v5, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v5, v13}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 648
    iget-object v5, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMaxValue()I

    move-result v5

    .line 649
    .local v5, "max":I
    iget-object v9, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->getMinValue()I

    move-result v9

    .line 650
    .local v9, "min":I
    sub-int v15, v5, v9

    add-int/2addr v15, v3

    new-array v15, v15, [Ljava/lang/String;

    .line 652
    .local v15, "displayedDays":[Ljava/lang/String;
    move/from16 v17, v9

    .local v17, "i":I
    :goto_8
    move/from16 v19, v17

    move/from16 v3, v19

    .end local v17    # "i":I
    .local v3, "i":I
    if-gt v3, v5, :cond_f

    .line 653
    sub-int v19, v3, v9

    invoke-static {v3}, Lcom/coui/appcompat/widget/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v19

    .line 652
    add-int/lit8 v17, v3, 0x1

    const/4 v3, 0x1

    goto :goto_8

    .line 655
    .end local v3    # "i":I
    :cond_f
    iget-object v3, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 658
    sget-object v3, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    move/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "isLeapYear":Z
    .local v20, "isLeapYear":Z
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 659
    .local v3, "minGregorianYear":I
    move/from16 v21, v2

    .end local v2    # "gregorianYear":I
    .local v21, "gregorianYear":I
    sget-object v2, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    move/from16 v22, v4

    const/4 v4, 0x2

    .end local v4    # "gregorianMonth":I
    .local v22, "gregorianMonth":I
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 660
    .local v2, "minGregorianMonth":I
    sget-object v4, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 661
    .local v1, "minGregorianDay":I
    invoke-static {v3, v2, v1}, Lcom/coui/appcompat/widget/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v4

    .line 664
    .local v4, "minLunarDate":[I
    move/from16 v23, v1

    .end local v1    # "minGregorianDay":I
    .local v23, "minGregorianDay":I
    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    move/from16 v24, v2

    const/4 v2, 0x1

    .end local v2    # "minGregorianMonth":I
    .local v24, "minGregorianMonth":I
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 665
    .local v1, "maxGregorianYear":I
    move/from16 v25, v3

    .end local v3    # "minGregorianYear":I
    .local v25, "minGregorianYear":I
    sget-object v3, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    move/from16 v26, v5

    const/4 v5, 0x2

    .end local v5    # "max":I
    .local v26, "max":I
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 666
    .local v3, "maxGregorianMonth":I
    invoke-static {v1, v3, v3}, Lcom/coui/appcompat/widget/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v2

    .line 670
    .local v2, "maxLunarDate":[I
    iget-object v5, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    move/from16 v27, v1

    const/16 v16, 0x0

    .end local v1    # "maxGregorianYear":I
    .local v27, "maxGregorianYear":I
    aget v1, v4, v16

    invoke-virtual {v5, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 671
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    aget v5, v2, v16

    invoke-virtual {v1, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 672
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 674
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    aget v5, v8, v16

    invoke-virtual {v1, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 675
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v11}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 676
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v5, 0x2

    aget v5, v8, v5

    invoke-virtual {v1, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 677
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 344
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 345
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

    .line 494
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 495
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .line 388
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    return v0
.end method

.method public getLeapMonth()I
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v0

    return v0
.end method

.method public getLunarDate()[I
    .locals 4

    .line 744
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    .line 745
    .local v0, "gregorianYear":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 746
    .local v2, "gregorianMonth":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v1

    .line 747
    .local v1, "gregorianDay":I
    invoke-static {v0, v2, v1}, Lcom/coui/appcompat/widget/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v3

    .line 748
    .local v3, "lunarDate":[I
    return-object v3
.end method

.method public getMaxDate()J
    .locals 2

    .line 301
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 271
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    return v0
.end method

.method public getOnDateChangedListener()Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;

    return-object v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;

    .line 522
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setDate(III)V

    .line 523
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateSpinners()V

    .line 524
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateCalendarView()V

    .line 525
    iput-object p4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;

    .line 526
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLeapMonth(I)Z
    .locals 2
    .param p1, "month"    # I

    .line 758
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 361
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 362
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 363
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 350
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 352
    const/16 v0, 0x14

    .line 354
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 355
    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->getTimeInMillis()J

    move-result-wide v2

    .line 354
    const/16 v4, 0x14

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 506
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;

    .line 507
    .local v0, "ss":Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 508
    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->access$1100(Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;)I

    move-result v1

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->access$1200(Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;)I

    move-result v2

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;->access$1300(Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setDate(III)V

    .line 509
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateSpinners()V

    .line 510
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateCalendarView()V

    .line 511
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .line 499
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v6

    .line 500
    .local v6, "superState":Landroid/os/Parcelable;
    new-instance v7, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getMonth()I

    move-result v3

    .line 501
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/widget/COUILunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/coui/appcompat/widget/COUILunarDatePicker$1;)V

    return-object v7
.end method

.method public refresh()V
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 1163
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 1165
    :cond_2
    return-void
.end method

.method public scrollForceFinished()V
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 1148
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 1150
    :cond_2
    return-void
.end method

.method public setCalendarViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .line 380
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 332
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 333
    return-void

    .line 335
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 338
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 339
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mIsEnabled:Z

    .line 340
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .line 310
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 311
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    sget-object v2, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 312
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    sget-object v3, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 313
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMaxDate failed!:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "<->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 314
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 317
    :cond_0
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 318
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->after(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 320
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateCalendarView()V

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateSpinners()V

    .line 323
    return-void
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .line 280
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 281
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    sget-object v2, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 282
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v0

    sget-object v3, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 283
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMinDate failed!:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "<->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mTempDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    .line 284
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "<->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 287
    :cond_0
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 288
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->before(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mCurrentDate:Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarDatePicker;->sMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 290
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateCalendarView()V

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateSpinners()V

    .line 293
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1
    .param p1, "normalTextColor"    # I

    .line 1173
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mDaySpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mMonthSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 1179
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 1180
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mYearSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 1182
    :cond_2
    return-void
.end method

.method public setOnDateChangedListener(Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;)V
    .locals 0
    .param p1, "onDateChangedListener"    # Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;

    .line 785
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mOnDateChangedListener:Lcom/coui/appcompat/widget/COUILunarDatePicker$OnDateChangedListener;

    .line 786
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 406
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILunarDatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    return-void

    .line 484
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->setDate(III)V

    .line 485
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateSpinners()V

    .line 486
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->updateCalendarView()V

    .line 487
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUILunarDatePicker;->notifyDateChanged()V

    .line 488
    return-void
.end method
