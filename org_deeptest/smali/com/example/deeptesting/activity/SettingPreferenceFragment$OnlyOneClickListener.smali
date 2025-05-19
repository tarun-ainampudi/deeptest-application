.class abstract Lcom/example/deeptesting/activity/SettingPreferenceFragment$OnlyOneClickListener;
.super Ljava/lang/Object;
.source "SettingPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/deeptesting/activity/SettingPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OnlyOneClickListener"
.end annotation


# static fields
.field private static final MIN_CLICK_DELAY_TIME:I = 0x3e8


# instance fields
.field private mLastClickTime:J

.field final synthetic this$0:Lcom/example/deeptesting/activity/SettingPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/example/deeptesting/activity/SettingPreferenceFragment;)V
    .locals 2

    .line 103
    iput-object p1, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment$OnlyOneClickListener;->this$0:Lcom/example/deeptesting/activity/SettingPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment$OnlyOneClickListener;->mLastClickTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/example/deeptesting/activity/SettingPreferenceFragment;Lcom/example/deeptesting/activity/SettingPreferenceFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/example/deeptesting/activity/SettingPreferenceFragment;
    .param p2, "x1"    # Lcom/example/deeptesting/activity/SettingPreferenceFragment$1;

    .line 103
    invoke-direct {p0, p1}, Lcom/example/deeptesting/activity/SettingPreferenceFragment$OnlyOneClickListener;-><init>(Lcom/example/deeptesting/activity/SettingPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 112
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment$OnlyOneClickListener;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 113
    iput-wide v0, p0, Lcom/example/deeptesting/activity/SettingPreferenceFragment$OnlyOneClickListener;->mLastClickTime:J

    .line 114
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/SettingPreferenceFragment$OnlyOneClickListener;->onlyOneClick()V

    .line 116
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected abstract onlyOneClick()V
.end method
