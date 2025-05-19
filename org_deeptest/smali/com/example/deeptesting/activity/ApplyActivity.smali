.class public Lcom/example/deeptesting/activity/ApplyActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ApplyActivity.java"


# instance fields
.field private mAgree:Landroid/widget/Button;

.field private mApplicationContext:Landroid/content/Context;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mDisclaimer:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsCheck:Z

.field private mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mIsCheck:Z

    .line 51
    new-instance v0, Lcom/example/deeptesting/activity/ApplyActivity$1;

    invoke-direct {v0, p0}, Lcom/example/deeptesting/activity/ApplyActivity$1;-><init>(Lcom/example/deeptesting/activity/ApplyActivity;)V

    iput-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/example/deeptesting/activity/ApplyActivity;)Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/ApplyActivity;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/deeptesting/activity/ApplyActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/ApplyActivity;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/ApplyActivity;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/example/deeptesting/activity/ApplyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/ApplyActivity;

    .line 39
    iget-boolean v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mIsCheck:Z

    return v0
.end method

.method static synthetic access$302(Lcom/example/deeptesting/activity/ApplyActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/example/deeptesting/activity/ApplyActivity;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mIsCheck:Z

    return p1
.end method

.method static synthetic access$400(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/ApplyActivity;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mAgree:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/ApplyActivity;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/example/deeptesting/activity/ApplyActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/example/deeptesting/activity/ApplyActivity;

    .line 39
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public initWindowParams()V
    .locals 3

    .line 160
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/ApplyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 161
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 162
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 164
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 165
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    .line 164
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 166
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/ApplyActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/ApplyActivity;->initWindowParams()V

    .line 70
    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/ApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iput-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 71
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationIcon(I)V

    .line 72
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    new-instance v1, Lcom/example/deeptesting/activity/ApplyActivity$2;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/ApplyActivity$2;-><init>(Lcom/example/deeptesting/activity/ApplyActivity;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mToolbar:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const v1, 0x7f100024

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/ApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    const v0, 0x7f09007e

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/ApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mCouiAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 81
    const v0, 0x7f090171

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/ApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 82
    iget-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/example/deeptesting/activity/ApplyActivity$3;

    invoke-direct {v1, p0}, Lcom/example/deeptesting/activity/ApplyActivity$3;-><init>(Lcom/example/deeptesting/activity/ApplyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 91
    invoke-static {p0}, Lcom/example/deeptesting/activity/ActivityCollector;->addActivity(Landroid/app/Activity;)V

    .line 92
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/ApplyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mApplicationContext:Landroid/content/Context;

    .line 94
    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/ApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mDisclaimer:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f100021

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/ApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "disclaimer":Ljava/lang/String;
    const v1, 0x7f100023

    invoke-virtual {p0, v1}, Lcom/example/deeptesting/activity/ApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "supplement":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    .local v2, "disclaimerStr":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 98
    const/16 v6, 0x12

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 100
    iget-object v3, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mDisclaimer:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v3, 0x7f090068

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/ApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 103
    const v3, 0x7f090041

    invoke-virtual {p0, v3}, Lcom/example/deeptesting/activity/ApplyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mAgree:Landroid/widget/Button;

    .line 104
    iget-object v3, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mAgree:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mIsCheck:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object v3, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/example/deeptesting/activity/ApplyActivity$4;

    invoke-direct {v4, p0}, Lcom/example/deeptesting/activity/ApplyActivity$4;-><init>(Lcom/example/deeptesting/activity/ApplyActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v3, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mAgree:Landroid/widget/Button;

    new-instance v4, Lcom/example/deeptesting/activity/ApplyActivity$5;

    invoke-direct {v4, p0}, Lcom/example/deeptesting/activity/ApplyActivity$5;-><init>(Lcom/example/deeptesting/activity/ApplyActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 148
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/example/deeptesting/activity/ApplyActivity;->finish()V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public showProgressDialog()V
    .locals 3

    .line 152
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    .line 153
    const v0, 0x7f10009b

    invoke-virtual {p0, v0}, Lcom/example/deeptesting/activity/ApplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->show()V

    .line 156
    iget-object v1, p0, Lcom/example/deeptesting/activity/ApplyActivity;->mProgressDialog:Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->setCancelable(Z)V

    .line 157
    return-void
.end method
