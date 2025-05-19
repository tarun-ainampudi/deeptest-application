.class public Lcom/coui/appcompat/widget/COUITimeLimitPicker;
.super Landroid/widget/FrameLayout;
.source "COUITimeLimitPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;,
        Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final LONGPRESS_UPDATE_INTERVAL:I = 0x64

.field private static final NO_OP_CHANGE_LISTENER:Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private final mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private final mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mHourText:Landroid/widget/TextView;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMinuteLayout:Landroid/view/ViewGroup;

.field private mMinuteText:Landroid/widget/TextView;

.field private mOnTimeChangedListener:Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    nop

    .line 55
    new-instance v0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$1;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->NO_OP_CHANGE_LISTENER:Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    sget v0, Lcoui/support/appcompat/R$attr;->couiTimePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIsEnabled:Z

    .line 111
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/coui/appcompat/util/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 114
    const-string v2, "layout_inflater"

    .line 115
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 116
    .local v2, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 117
    sget v3, Lcoui/support/appcompat/R$layout;->coui_time_limit_picker:I

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 119
    sget v3, Lcoui/support/appcompat/R$id;->coui_timepicker_minute_text:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mMinuteText:Landroid/widget/TextView;

    .line 120
    sget v3, Lcoui/support/appcompat/R$id;->coui_timepicker_hour_text:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mHourText:Landroid/widget/TextView;

    .line 121
    sget v3, Lcoui/support/appcompat/R$id;->minute_layout:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mMinuteLayout:Landroid/view/ViewGroup;

    .line 123
    sget v3, Lcoui/support/appcompat/R$id;->hour:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 124
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v4, Lcom/coui/appcompat/widget/COUITimeLimitPicker$2;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$2;-><init>(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)V

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 130
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mMinuteText:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 131
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mHourText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 134
    sget v3, Lcoui/support/appcompat/R$id;->minute:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 135
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setTwoDigitFormatter()V

    .line 136
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 137
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 138
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 139
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v4, Lcom/coui/appcompat/widget/COUITimeLimitPicker$3;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$3;-><init>(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)V

    invoke-virtual {v3, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$array;->coui_time_picker_ampm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mAmPmStrings:[Ljava/lang/String;

    .line 150
    sget v3, Lcoui/support/appcompat/R$id;->amPm:I

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 151
    .local v3, "amPmView":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/Button;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 152
    iput-object v5, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 153
    move-object v0, v3

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mAmPmButton:Landroid/widget/Button;

    .line 154
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v4, Lcom/coui/appcompat/widget/COUITimeLimitPicker$4;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$4;-><init>(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 163
    :cond_0
    iput-object v5, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mAmPmButton:Landroid/widget/Button;

    .line 164
    move-object v4, v3

    check-cast v4, Lcom/coui/appcompat/widget/COUINumberPicker;

    iput-object v4, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    .line 165
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 166
    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v4, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 167
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    iget-object v4, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v4, Lcom/coui/appcompat/widget/COUITimeLimitPicker$5;

    invoke-direct {v4, p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$5;-><init>(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)V

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setOnValueChangedListener(Lcom/coui/appcompat/widget/COUINumberPicker$OnValueChangeListener;)V

    .line 180
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->updateHourControl()V

    .line 181
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->updateAmPmControl()V

    .line 182
    sget-object v0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->NO_OP_CHANGE_LISTENER:Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setOnTimeChangedListener(Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;)V

    .line 185
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 186
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 188
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setEnabled(Z)V

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->reorderSpinners()V

    .line 193
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->isAccessibilityEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->picker_talkback_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "talkbackTip":Ljava/lang/String;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcoui/support/appcompat/R$string;->coui_hour:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcoui/support/appcompat/R$string;->coui_minute:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->addTalkbackSuffix(Ljava/lang/String;)V

    .line 201
    .end local v0    # "talkbackTip":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    .line 49
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    .line 49
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/widget/COUITimeLimitPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimeLimitPicker;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/widget/COUITimeLimitPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/widget/COUITimeLimitPicker;

    .line 49
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->updateAmPmControl()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mOnTimeChangedListener:Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mOnTimeChangedListener:Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;->onTimeChanged(Lcom/coui/appcompat/widget/COUITimeLimitPicker;II)V

    .line 525
    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 4

    .line 205
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 208
    .local v1, "view":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setAlignPosition(I)V

    .line 210
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 213
    .end local v1    # "view":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 263
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCurrentLocale:Ljava/util/Locale;

    .line 267
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mTempCalendar:Ljava/util/Calendar;

    .line 268
    return-void
.end method

.method private setWeight()V
    .locals 6

    .line 493
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 494
    .local v0, "paramsHour":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mMinuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 495
    .local v1, "paramsMin":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->is24HourView()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 498
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 500
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mMinuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    return-void

    .line 504
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "hm"

    invoke-static {v2, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 506
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    :cond_2
    const-string v4, "a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 509
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 510
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 512
    :cond_3
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 513
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->isLayoutRtl()Z

    move-result v4

    if-nez v4, :cond_4

    .line 514
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 517
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mMinuteLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .line 462
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setVisibility(I)V

    .line 465
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setWeight()V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 470
    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    .line 471
    .local v0, "index":I
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 472
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 473
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setVisibility(I)V

    .line 474
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setWeight()V

    goto :goto_0

    .line 476
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    .end local v0    # "index":I
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setWeight()V

    .line 481
    return-void
.end method

.method private updateHourControl()V
    .locals 5

    .line 447
    const/16 v0, 0xc

    .line 448
    .local v0, "maxAmPmHour":I
    const/16 v1, 0x17

    .line 449
    .local v1, "maxHour":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->is24HourView()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 451
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 452
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUINumberPicker;->setTwoDigitFormatter()V

    goto :goto_0

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMinValue(I)V

    .line 455
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->setMaxValue(I)V

    .line 457
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 458
    iget-object v2, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/widget/COUINumberPicker;->setWrapSelectorWheel(Z)V

    .line 459
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v0

    .line 349
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 351
    :cond_0
    iget-boolean v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 352
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 354
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIsEnabled:Z

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .line 489
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

    .line 253
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 254
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 255
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 327
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;

    .line 328
    .local v0, "ss":Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 329
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 330
    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 331
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 321
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 322
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/coui/appcompat/widget/COUITimeLimitPicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/coui/appcompat/widget/COUITimeLimitPicker$1;)V

    return-object v1
.end method

.method public refresh()V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->refresh()V

    .line 571
    :cond_2
    return-void
.end method

.method public scrollForceFinished()V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUINumberPicker;->scrollForceFinished()V

    .line 556
    :cond_2
    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .line 365
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 370
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIsAm:Z

    .line 372
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 373
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 376
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIsAm:Z

    .line 377
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 378
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 381
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->updateAmPmControl()V

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 384
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->onTimeChanged()V

    .line 385
    return-void

    .line 366
    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 434
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setValue(I)V

    .line 438
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->onTimeChanged()V

    .line 439
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 232
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setEnabled(Z)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    :goto_0
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIsEnabled:Z

    .line 244
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .line 393
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 394
    return-void

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 398
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mIs24HourView:Z

    .line 400
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->updateHourControl()V

    .line 402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 403
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->updateAmPmControl()V

    .line 405
    iget-object v1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUINumberPicker;->requestLayout()V

    .line 408
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1
    .param p1, "normalTextColor"    # I

    .line 579
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setNormalTextColor(I)V

    .line 588
    :cond_2
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;

    .line 339
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mOnTimeChangedListener:Lcom/coui/appcompat/widget/COUITimeLimitPicker$OnTimeChangedListener;

    .line 340
    return-void
.end method

.method public setRowNumber(I)V
    .locals 1
    .param p1, "rowNumber"    # I

    .line 533
    if-gtz p1, :cond_0

    .line 534
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIHourSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerRowNumber(I)V

    .line 538
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIMinuteSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerRowNumber(I)V

    .line 539
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mCOUIAmPmSpinner:Lcom/coui/appcompat/widget/COUINumberPicker;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUINumberPicker;->setPickerRowNumber(I)V

    .line 541
    :cond_1
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mMinuteText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mHourText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mMinuteText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUITimeLimitPicker;->mHourText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    :goto_0
    return-void
.end method
