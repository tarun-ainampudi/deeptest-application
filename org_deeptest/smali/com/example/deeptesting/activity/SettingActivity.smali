.class public Lcom/example/deeptesting/activity/SettingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingActivity.java"


# instance fields
.field private mContinue:Landroid/widget/Button;

.field private mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mRoot:Landroid/widget/FrameLayout;

.field private mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/deeptesting/activity/SettingActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/SettingActivity;

    .line 23
    iget-object v0, p0, Lcom/example/deeptesting/activity/SettingActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/deeptesting/activity/SettingActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/SettingActivity;

    .line 23
    iget-object v0, p0, Lcom/example/deeptesting/activity/SettingActivity;->mRoot:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public initWindowParams()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 74
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 75
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 77
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0c00b3

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/SettingActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/SettingActivity;->initWindowParams()V

    .line 36
    invoke-static {p0}, Lcom/example/deeptesting/activity/ActivityCollector;->addActivity(Landroid/app/Activity;)V

    .line 38
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/example/deeptesting/activity/SettingActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/SettingActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(I)V

    .line 40
    iget-object v0, p0, Lcom/example/deeptesting/activity/SettingActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    new-instance v1, Lcom/example/deeptesting/activity/SettingActivity$1;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/SettingActivity$1;-><init>(Lcom/example/deeptesting/activity/SettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/example/deeptesting/activity/SettingActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v1, 0x7f1000f9

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/example/deeptesting/activity/SettingActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 49
    const v0, 0x7f090101

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/example/deeptesting/activity/SettingActivity;->mRoot:Landroid/widget/FrameLayout;

    .line 50
    iget-object v1, p0, Lcom/example/deeptesting/activity/SettingActivity;->mRoot:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/example/deeptesting/activity/SettingActivity$2;

    invoke-direct {v2, p0}, Lcom/example/deeptesting/activity/SettingActivity$2;-><init>(Lcom/example/deeptesting/activity/SettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 58
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/SettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/example/deeptesting/activity/SettingPreferenceFragment;

    invoke-direct {v2}, Lcom/example/deeptesting/activity/SettingPreferenceFragment;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 69
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/SettingActivity;->finish()V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
