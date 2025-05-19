.class public Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;
.super Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;
.source "COUIProgressSpinnerDialog.java"


# instance fields
.field private mBody:Landroid/widget/LinearLayout;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCancelable:Z

.field private mProgressBar:Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mCancelable:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mCancelable:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 79
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mCancelable:Z

    .line 80
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mCancelable:Z

    .line 81
    iput-object p3, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;

    .line 40
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mProgressBar:Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mProgressBar:Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getMax()I

    move-result v0

    return v0

    .line 148
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mProgressBar:Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mProgressBar:Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 136
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mProgressVal:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 86
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcoui/support/appcompat/R$layout;->coui_progress_dialog_horizontal:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "view":Landroid/view/View;
    sget v2, Lcoui/support/appcompat/R$id;->progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;

    iput-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mProgressBar:Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;

    .line 90
    sget v2, Lcoui/support/appcompat/R$id;->body:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

    .line 91
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 92
    .local v2, "res":Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mCancelable:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_progress_dialog_padding_top:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_progress_cancelable_dialog_padding_bottom:I

    .line 94
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 93
    invoke-virtual {v3, v4, v5, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_progress_dialog_padding_top:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_progress_dialog_padding_bottom:I

    .line 97
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 96
    invoke-virtual {v3, v4, v5, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 99
    :goto_0
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->setView(Landroid/view/View;)V

    .line 100
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mCancelable:Z

    if-eqz v3, :cond_1

    .line 101
    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog$1;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog$1;-><init>(Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 111
    :cond_1
    invoke-super {p0, p1}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->onCreate(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .line 157
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mProgressBar:Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mProgressBar:Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->setMax(I)V

    goto :goto_0

    .line 160
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mMax:I

    .line 162
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .line 120
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mProgressBar:Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/widget/COUIHorizontalProgressBar;->setProgress(I)V

    goto :goto_0

    .line 123
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/dialog/app/COUIProgressSpinnerDialog;->mProgressVal:I

    .line 125
    :goto_0
    return-void
.end method
