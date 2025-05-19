.class public Lcom/example/deeptesting/activity/WarningActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WarningActivity.java"


# instance fields
.field private mContinue:Landroid/widget/Button;

.field private mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/deeptesting/activity/WarningActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/WarningActivity;

    .line 24
    iget-object v0, p0, Lcom/example/deeptesting/activity/WarningActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/deeptesting/activity/WarningActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/WarningActivity;

    .line 24
    iget-object v0, p0, Lcom/example/deeptesting/activity/WarningActivity;->mRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public initWindowParams()V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/WarningActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 82
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 83
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 85
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 86
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    .line 85
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0c00c6

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/WarningActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/WarningActivity;->initWindowParams()V

    .line 37
    invoke-static {p0}, Lcom/example/deeptesting/activity/ActivityCollector;->addActivity(Landroid/app/Activity;)V

    .line 39
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/WarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/example/deeptesting/activity/WarningActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 40
    iget-object v0, p0, Lcom/example/deeptesting/activity/WarningActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(I)V

    .line 41
    iget-object v0, p0, Lcom/example/deeptesting/activity/WarningActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    new-instance v1, Lcom/example/deeptesting/activity/WarningActivity$1;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/WarningActivity$1;-><init>(Lcom/example/deeptesting/activity/WarningActivity;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/example/deeptesting/activity/WarningActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v1, 0x7f100117

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/WarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/WarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/example/deeptesting/activity/WarningActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 50
    const v0, 0x7f090164

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/WarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/example/deeptesting/activity/WarningActivity;->mRoot:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v0, p0, Lcom/example/deeptesting/activity/WarningActivity;->mRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/example/deeptesting/activity/WarningActivity$2;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/WarningActivity$2;-><init>(Lcom/example/deeptesting/activity/WarningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 60
    const v0, 0x7f0900d2

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/WarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/deeptesting/activity/WarningActivity;->mContinue:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/example/deeptesting/activity/WarningActivity;->mContinue:Landroid/widget/Button;

    new-instance v1, Lcom/example/deeptesting/activity/WarningActivity$3;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/WarningActivity$3;-><init>(Lcom/example/deeptesting/activity/WarningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 77
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/WarningActivity;->finish()V

    .line 75
    const/4 v0, 0x1

    return v0
.end method
