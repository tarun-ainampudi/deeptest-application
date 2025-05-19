.class public Lcom/coui/appcompat/widget/COUITimePicker;
.super Landroid/widget/FrameLayout;
.source "COUITimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUITimePicker$Format;,
        Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;
    }
.end annotation


# static fields
.field private static final HOURS_OF_A_DAY:I = 0x17

.field private static final HOURS_OF_HALF_DAY:I = 0xc

.field private static final LEAPYEAR_STEP_FOUR:I = 0x4

.field private static final LEAPYEAR_STEP_FOUR_HUN:I = 0x190

.field private static final LEAPYEAR_STEP_HUN:I = 0x64

.field private static final MILLISECOND_A_DAY:J = 0x5265c00L

.field private static final MINUTES_OF_A_HOUR:I = 0x3b

.field private static final MINUTES_STEP:I = 0x5

.field private static final START_YEAR:I = 0x76c

.field private static final TAG:Ljava/lang/String; = "COUITimePicker"

.field private static final TOTAL_YEAR:I = 0x64

.field private static final YEAR_AMOUNT_LEAP:I = 0x16e

.field private static final YEAR_AMOUNT_NOT_LEAP:I = 0x16d


# instance fields
.field private mAmPm:I

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDateNamesTemp:[Ljava/lang/String;

.field private mDefaultCalendar:Ljava/util/Calendar;

.field private mEndDate:Ljava/util/Date;

.field private mIsMinuteFiveStep:Z

.field private mOnTimeChangeListener:Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

.field private mOutformatter:Ljava/text/SimpleDateFormat;

.field private mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private mStartTime:J

.field private mTextAMPM:[Ljava/lang/String;

.field private mTextDates:[Ljava/lang/String;

.field private mTextDay:Ljava/lang/String;

.field private mTextToday:Ljava/lang/String;

.field private mTodayCalendar:Ljava/util/Calendar;

.field private mTodayDate:I

.field private mTodayIndex:I

.field private mTodayMonth:I

.field private mTodayYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUITimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUITimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayIndex:I

    .line 81
    iput v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mAmPm:I

    .line 127
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 128
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mContext:Landroid/content/Context;

    .line 129
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$array;->coui_time_picker_ampm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTextAMPM:[Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->coui_time_picker_today:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTextToday:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->coui_time_picker_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTextDay:Ljava/lang/String;

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mCalendar:Ljava/util/Calendar;

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayCalendar:Ljava/util/Calendar;

    .line 134
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayYear:I

    .line 135
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayMonth:I

    .line 136
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayDate:I

    .line 137
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yyyy MMM dd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTextDay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    .line 138
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcoui/support/appcompat/R$layout;->coui_time_picker:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 140
    .local v0, "vg":Landroid/view/ViewGroup;
    sget v1, Lcoui/support/appcompat/R$id;->coui_time_picker_date:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 141
    sget v1, Lcoui/support/appcompat/R$id;->coui_time_picker_hour:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 142
    sget v1, Lcoui/support/appcompat/R$id;->coui_time_picker_minute:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 143
    sget v1, Lcoui/support/appcompat/R$id;->coui_time_picker_ampm:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 145
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimePicker;->reorderSpinners()V

    .line 147
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->isAccessibilityEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$string;->picker_talkback_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "talkbackTip":Ljava/lang/String;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_hour:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_minute:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v2, :cond_3

    .line 159
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$string;->coui_minute:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 162
    .end local v1    # "talkbackTip":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUITimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 41
    iget v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mAmPm:I

    return v0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/widget/COUITimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mAmPm:I

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 41
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/widget/COUITimePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 41
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTextDates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 41
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTextToday:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/coui/appcompat/widget/COUITimePicker;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 41
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUITimePicker;)Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 41
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mOnTimeChangeListener:Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/widget/COUITimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 41
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimePicker;->is24Hours()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/widget/COUITimePicker;)Lcom/coui/appcompat/widget/COUINumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 41
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/widget/COUITimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 41
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mIsMinuteFiveStep:Z

    return v0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/widget/COUITimePicker;I)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;
    .param p1, "x1"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUITimePicker;->getDateFromValue(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/widget/COUITimePicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;
    .param p1, "x1"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUITimePicker;->getDateYMDW(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/widget/COUITimePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 41
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mDateNamesTemp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/widget/COUITimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimePicker;

    .line 41
    iget v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayIndex:I

    return v0
.end method

.method private deduplicate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "order":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 168
    .local v2, "p":C
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .end local v2    # "p":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private getAlignPosition(I)I
    .locals 2
    .param p1, "i"    # I

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "alignPosition":I
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 222
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_0
    const/4 v0, 0x1

    .line 220
    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x2

    .line 217
    nop

    .line 225
    :goto_0
    return v0
.end method

.method private getDateFromValue(I)Ljava/util/Date;
    .locals 3
    .param p1, "value"    # I

    .line 484
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mDateNamesTemp:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 485
    .local v0, "date":Ljava/lang/String;
    const/4 v1, 0x0

    .line 487
    .local v1, "res":Ljava/util/Date;
    :try_start_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 490
    goto :goto_0

    .line 488
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 491
    .end local v2    # "e":Ljava/text/ParseException;
    :goto_0
    return-object v1
.end method

.method private getDateYMDW(I)Ljava/lang/String;
    .locals 7
    .param p1, "elapsetime"    # I

    .line 461
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mEndDate:Ljava/util/Date;

    iget-wide v1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mStartTime:J

    int-to-long v3, p1

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 462
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    .line 463
    .local v0, "mEndYear":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mEndDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    .line 464
    .local v1, "mEndMonth":I
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mEndDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v2

    .line 465
    .local v2, "mEndDay":I
    invoke-direct {p0, v0, v1, v2}, Lcom/coui/appcompat/widget/COUITimePicker;->isToday(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    iput p1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayIndex:I

    goto :goto_0

    .line 468
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayIndex:I

    .line 470
    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDaysAmountOfYear(I)I
    .locals 1
    .param p1, "year"    # I

    .line 441
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUITimePicker;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method private is24Hours()Z
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "strTimeFormat":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLeapYear(I)Z
    .locals 1
    .param p1, "year"    # I

    .line 479
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isToday(III)Z
    .locals 1
    .param p1, "y"    # I
    .param p2, "m"    # I
    .param p3, "d"    # I

    .line 474
    iget v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayYear:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayMonth:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayDate:I

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reorderSpinners()V
    .locals 7

    .line 176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "yyyyMMMddhm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUITimePicker;->deduplicate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "pattern":Ljava/lang/String;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 178
    .local v1, "spinners":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, "sawDate":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v3, "spinnerOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 182
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x4d

    if-eq v5, v6, :cond_3

    const/16 v6, 0x61

    if-eq v5, v6, :cond_2

    const/16 v6, 0x64

    if-eq v5, v6, :cond_3

    const/16 v6, 0x68

    if-eq v5, v6, :cond_1

    const/16 v6, 0x6d

    if-eq v5, v6, :cond_0

    const/16 v6, 0x79

    if-eq v5, v6, :cond_3

    goto :goto_1

    .line 204
    :cond_0
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/coui/appcompat/widget/COUITimePicker;->getAlignPosition(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setAlignPosition(I)V

    .line 206
    const-string v5, "m"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :cond_1
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 200
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/coui/appcompat/widget/COUITimePicker;->getAlignPosition(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setAlignPosition(I)V

    .line 201
    const-string v5, "h"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    goto :goto_1

    .line 194
    :cond_2
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 195
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/coui/appcompat/widget/COUITimePicker;->getAlignPosition(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setAlignPosition(I)V

    .line 196
    const-string v5, "a"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    goto :goto_1

    .line 186
    :cond_3
    if-nez v2, :cond_4

    .line 187
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    iget-object v5, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/coui/appcompat/widget/COUITimePicker;->getAlignPosition(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setAlignPosition(I)V

    .line 189
    const-string v5, "D"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    const/4 v2, 0x1

    .line 181
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 210
    .end local v4    # "i":I
    :cond_5
    return-void
.end method


# virtual methods
.method public getTimePicker()Landroid/view/View;
    .locals 20

    .line 249
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 257
    .local v1, "defaultCalendar":Ljava/util/Calendar;
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 258
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    .line 259
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_0

    .line 261
    :cond_0
    iget-object v1, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayCalendar:Ljava/util/Calendar;

    .line 262
    iget-object v2, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mTodayCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 264
    .local v2, "calendarYear":I
    :goto_0
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v11, v4, 0x1

    .line 265
    .local v11, "calendarMonth":I
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 266
    .local v13, "calendarDay":I
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 267
    .local v14, "calendarHour":I
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 268
    .local v15, "calendarAmpm":I
    const/16 v9, 0xc

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 269
    .local v8, "calendarMinute":I
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 270
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mOutformatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 272
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mCalendar:Ljava/util/Calendar;

    add-int/lit8 v6, v11, -0x1

    move v5, v2

    move v7, v13

    move/from16 v16, v8

    .end local v8    # "calendarMinute":I
    .local v16, "calendarMinute":I
    move v8, v14

    move/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Ljava/util/Calendar;->set(IIIII)V

    .line 274
    const v4, 0x8e94

    .line 275
    .local v4, "mDateAmount":I
    const/4 v5, 0x0

    .line 276
    .local v5, "half":I
    const/4 v9, 0x0

    move v8, v4

    move v4, v9

    .local v4, "i":I
    .local v8, "mDateAmount":I
    :goto_1
    const/16 v6, 0x64

    if-ge v4, v6, :cond_1

    .line 277
    add-int/lit8 v6, v2, -0x32

    add-int/2addr v6, v4

    invoke-direct {v0, v6}, Lcom/coui/appcompat/widget/COUITimePicker;->getDaysAmountOfYear(I)I

    move-result v6

    add-int/2addr v8, v6

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    .end local v4    # "i":I
    :cond_1
    move v4, v9

    .restart local v4    # "i":I
    :goto_2
    const/16 v6, 0x32

    if-ge v4, v6, :cond_2

    .line 281
    add-int/lit8 v6, v2, -0x32

    add-int/2addr v6, v4

    invoke-direct {v0, v6}, Lcom/coui/appcompat/widget/COUITimePicker;->getDaysAmountOfYear(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 284
    .end local v4    # "i":I
    :cond_2
    new-array v4, v8, [Ljava/lang/String;

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mTextDates:[Ljava/lang/String;

    .line 285
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mTextDates:[Ljava/lang/String;

    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mDateNamesTemp:[Ljava/lang/String;

    .line 287
    if-le v11, v10, :cond_3

    add-int/lit8 v4, v2, -0x32

    invoke-direct {v0, v4}, Lcom/coui/appcompat/widget/COUITimePicker;->isLeapYear(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {v0, v2}, Lcom/coui/appcompat/widget/COUITimePicker;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    add-int/lit8 v5, v5, 0x1

    .line 291
    :cond_3
    if-le v11, v10, :cond_4

    add-int/lit8 v4, v2, -0x32

    invoke-direct {v0, v4}, Lcom/coui/appcompat/widget/COUITimePicker;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 292
    add-int/lit8 v5, v5, -0x1

    .line 295
    .end local v5    # "half":I
    .local v7, "half":I
    :cond_4
    move v7, v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 296
    .local v6, "startCalendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 297
    add-int/lit8 v17, v11, -0x1

    move-object v4, v6

    move v5, v2

    move-object v3, v6

    .end local v6    # "startCalendar":Ljava/util/Calendar;
    .local v3, "startCalendar":Ljava/util/Calendar;
    move/from16 v6, v17

    move/from16 v18, v7

    .end local v7    # "half":I
    .local v18, "half":I
    move v7, v13

    move/from16 v19, v8

    .end local v8    # "mDateAmount":I
    .local v19, "mDateAmount":I
    move v8, v14

    move/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Ljava/util/Calendar;->set(IIIII)V

    .line 298
    invoke-direct {v0, v2}, Lcom/coui/appcompat/widget/COUITimePicker;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne v11, v10, :cond_5

    const/16 v4, 0x1d

    if-ne v13, v4, :cond_5

    .line 299
    const/4 v4, 0x1

    invoke-virtual {v3, v12, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_3

    .line 301
    :cond_5
    const/4 v4, 0x1

    :goto_3
    const/16 v5, -0x32

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 302
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mStartTime:J

    .line 303
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mEndDate:Ljava/util/Date;

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUITimePicker;->is24Hours()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 307
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 308
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 309
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setTwoDigitFormatter()V

    .line 310
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setVisibility(I)V

    .line 321
    const/16 v6, 0xc

    goto :goto_4

    .line 312
    :cond_6
    const/4 v5, 0x0

    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 313
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 314
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v8, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mTextAMPM:[Ljava/lang/String;

    array-length v8, v8

    sub-int/2addr v8, v7

    invoke-virtual {v4, v8}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 315
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 316
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v7, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mTextAMPM:[Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 317
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setVisibility(I)V

    .line 318
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 321
    :goto_4
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/widget/COUITimePicker;->is24Hours()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 324
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v14}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    goto :goto_6

    .line 326
    :cond_7
    if-lez v15, :cond_8

    .line 327
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    add-int/lit8 v7, v14, -0xc

    invoke-virtual {v4, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    goto :goto_5

    .line 329
    :cond_8
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v14}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 331
    :goto_5
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v15}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 332
    iput v15, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mAmPm:I

    .line 335
    :goto_6
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v7, Lcom/coui/appcompat/widget/COUITimePicker$1;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/COUITimePicker$1;-><init>(Lcom/coui/appcompat/widget/COUITimePicker;)V

    invoke-virtual {v4, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 347
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v7, Lcom/coui/appcompat/widget/COUITimePicker$2;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/COUITimePicker$2;-><init>(Lcom/coui/appcompat/widget/COUITimePicker;)V

    invoke-virtual {v4, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 373
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 374
    iget-boolean v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mIsMinuteFiveStep:Z

    if-eqz v4, :cond_b

    .line 375
    const/16 v4, 0xc

    .line 376
    .local v4, "len":I
    iget-object v7, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v7, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 377
    iget-object v7, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 378
    new-array v7, v4, [Ljava/lang/String;

    .line 379
    .local v7, "minutes":[Ljava/lang/String;
    move v8, v5

    .local v8, "i":I
    :goto_7
    if-ge v8, v4, :cond_a

    .line 380
    mul-int/lit8 v9, v8, 0x5

    const/16 v10, 0xa

    if-ge v9, v10, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v10, v8, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v10, v8, 0x5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :goto_9
    aput-object v9, v7, v8

    .line 379
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 382
    .end local v8    # "i":I
    :cond_a
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v8, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 383
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    move/from16 v9, v16

    .end local v16    # "calendarMinute":I
    .local v9, "calendarMinute":I
    div-int/lit8 v10, v9, 0x5

    invoke-virtual {v8, v10}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 384
    iget-object v8, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mCalendar:Ljava/util/Calendar;

    div-int/lit8 v10, v9, 0x5

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 385
    .end local v4    # "len":I
    .end local v7    # "minutes":[Ljava/lang/String;
    goto :goto_a

    .line 386
    .end local v9    # "calendarMinute":I
    .restart local v16    # "calendarMinute":I
    :cond_b
    move/from16 v9, v16

    .end local v16    # "calendarMinute":I
    .restart local v9    # "calendarMinute":I
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/16 v6, 0x3b

    invoke-virtual {v4, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 387
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v9}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 390
    :goto_a
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setTwoDigitFormatter()V

    .line 391
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 393
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v7, Lcom/coui/appcompat/widget/COUITimePicker$3;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/COUITimePicker$3;-><init>(Lcom/coui/appcompat/widget/COUITimePicker;)V

    invoke-virtual {v4, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 409
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v6}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 410
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    move/from16 v8, v19

    .end local v19    # "mDateAmount":I
    .local v8, "mDateAmount":I
    invoke-virtual {v4, v8}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 411
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 412
    iget-object v4, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    move/from16 v5, v18

    .end local v18    # "half":I
    .restart local v5    # "half":I
    invoke-virtual {v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 413
    new-instance v4, Lcom/coui/appcompat/widget/COUITimePicker$Format;

    invoke-direct {v4, v0}, Lcom/coui/appcompat/widget/COUITimePicker$Format;-><init>(Lcom/coui/appcompat/widget/COUITimePicker;)V

    .line 414
    .local v4, "f":Lcom/coui/appcompat/widget/COUITimePicker$Format;
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v6, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setFormatter(Lcom/coui/appcompat/widget/COUINumberPicker$Formatter;)V

    .line 416
    iget-object v6, v0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v7, Lcom/coui/appcompat/widget/COUITimePicker$4;

    invoke-direct {v7, v0}, Lcom/coui/appcompat/widget/COUITimePicker$4;-><init>(Lcom/coui/appcompat/widget/COUITimePicker;)V

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 431
    return-object v0
.end method

.method public refresh()V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_3

    .line 533
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 535
    :cond_3
    return-void
.end method

.method public scrollForceFinished()V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimePicker;->is24Hours()Z

    move-result v0

    if-nez v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 517
    :cond_3
    return-void
.end method

.method public setMinuteStepToFive()V
    .locals 1

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mIsMinuteFiveStep:Z

    .line 499
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1
    .param p1, "normalTextColor"    # I

    .line 543
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerDate:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerHour:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerMinute:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mPickerAmPm:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 555
    :cond_3
    return-void
.end method

.method public setOnTimeChangeListener(Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;)V
    .locals 0
    .param p1, "e"    # Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

    .line 99
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mOnTimeChangeListener:Lcom/coui/appcompat/widget/COUITimePicker$OnTimeChangeListener;

    .line 100
    return-void
.end method

.method public setTimePicker(ILjava/util/Calendar;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "defaultCalendar"    # Ljava/util/Calendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    iput-object p2, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    .line 231
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimePicker;->getTimePicker()Landroid/view/View;

    .line 232
    return-void
.end method

.method public setTimePicker(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "defaultCalendar"    # Ljava/util/Calendar;

    .line 240
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimePicker;->mDefaultCalendar:Ljava/util/Calendar;

    .line 241
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimePicker;->getTimePicker()Landroid/view/View;

    .line 242
    return-void
.end method
