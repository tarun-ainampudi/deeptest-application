.class public Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OpenSourceNoticeActivity.java"


# instance fields
.field private mContinue:Landroid/widget/Button;

.field private mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mRoot:Landroid/widget/ScrollView;

.field private mTextView:Landroid/widget/TextView;

.field private mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    .line 28
    iget-object v0, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    .line 28
    iget-object v0, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->mRoot:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;

    .line 28
    iget-object v0, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 28
    iput-object p1, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->mTextView:Landroid/widget/TextView;

    return-object p1
.end method


# virtual methods
.method public initWindowParams()V
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 104
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 105
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 107
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    .line 107
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0c009f

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->initWindowParams()V

    .line 42
    invoke-static {p0}, Lcom/example/deeptesting/activity/ActivityCollector;->addActivity(Landroid/app/Activity;)V

    .line 44
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 45
    iget-object v0, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(I)V

    .line 46
    iget-object v0, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    new-instance v1, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$1;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$1;-><init>(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v1, 0x7f1000ec

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 56
    const v0, 0x7f090101

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->mRoot:Landroid/widget/ScrollView;

    .line 58
    iget-object v0, p0, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->mRoot:Landroid/widget/ScrollView;

    new-instance v1, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity$2;-><init>(Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 99
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/OpenSourceNoticeActivity;->finish()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method
