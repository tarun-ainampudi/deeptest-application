.class public Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;
.super Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;
.source "COUIRotatingSpinnerDialog.java"


# instance fields
.field private mBody:Landroid/widget/LinearLayout;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mCancelable:Z

.field private mIsCanceledOnTouchOutside:Z

.field private mParentPanel:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mCancelable:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mIsCanceledOnTouchOutside:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;-><init>(Landroid/content/Context;I)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mCancelable:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mIsCanceledOnTouchOutside:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 81
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mCancelable:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mIsCanceledOnTouchOutside:Z

    .line 82
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mCancelable:Z

    .line 83
    iput-object p3, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    .line 40
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;

    .line 40
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mIsCanceledOnTouchOutside:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 88
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcoui/support/appcompat/R$layout;->coui_progress_dialog_rotating:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, "view":Landroid/view/View;
    sget v2, Lcoui/support/appcompat/R$id;->body:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

    .line 92
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 93
    .local v2, "res":Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mCancelable:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_loading_dialog_padding_top:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_loading_cancelable_dialog_padding_bottom:I

    .line 95
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 94
    invoke-virtual {v3, v4, v5, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mBody:Landroid/widget/LinearLayout;

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_loading_dialog_padding_top:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_loading_dialog_padding_bottom:I

    .line 98
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 97
    invoke-virtual {v3, v4, v5, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 100
    :goto_0
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->setView(Landroid/view/View;)V

    .line 101
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mCancelable:Z

    if-eqz v3, :cond_1

    .line 102
    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$1;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$1;-><init>(Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 112
    :cond_1
    invoke-super {p0, p1}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->onCreate(Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .line 162
    invoke-super {p0, p1}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->setCanceledOnTouchOutside(Z)V

    .line 163
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mIsCanceledOnTouchOutside:Z

    .line 164
    return-void
.end method

.method public show()V
    .locals 4

    .line 117
    invoke-super {p0}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->show()V

    .line 118
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mParentPanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 119
    sget v0, Lcoui/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mParentPanel:Landroid/view/ViewGroup;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mParentPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mParentPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 123
    .local v0, "parentParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mParentPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mParentPanel:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->coui_loading_dialog_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mParentPanel:Landroid/view/ViewGroup;

    .line 126
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mParentPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 125
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 127
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mParentPanel:Landroid/view/ViewGroup;

    new-instance v2, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$2;-><init>(Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mParentPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 134
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    if-eqz v1, :cond_1

    .line 135
    new-instance v2, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$3;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$3;-><init>(Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .end local v0    # "parentParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 148
    sget v0, Lcoui/support/appcompat/R$id;->alertTitle:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mTitleView:Landroid/widget/TextView;

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;->mTitleView:Landroid/widget/TextView;

    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog$4;-><init>(Lcom/coui/appcompat/dialog/app/COUIRotatingSpinnerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    :cond_3
    return-void
.end method
