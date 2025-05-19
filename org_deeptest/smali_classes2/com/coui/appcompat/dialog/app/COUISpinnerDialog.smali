.class public Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;
.super Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
.source "COUISpinnerDialog.java"


# instance fields
.field protected mHasStarted:Z

.field protected mMax:I

.field protected mMessage:Ljava/lang/CharSequence;

.field protected mMessageView:Landroid/widget/TextView;

.field protected mProgress:Landroid/view/View;

.field protected mProgressVal:I

.field protected mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 65
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->setCancelable(Z)V

    .line 67
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 68
    return-void
.end method


# virtual methods
.method createDialog(I)V
    .locals 2
    .param p1, "deleteDialogOption"    # I

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$style;->COUIDialogAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 62
    return-void
.end method

.method public getMax()I
    .locals 1

    .line 138
    const/4 v0, -0x1

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 85
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->mMax:I

    if-lez v0, :cond_0

    .line 86
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->mMax:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->setMax(I)V

    .line 88
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->mProgressVal:I

    if-lez v0, :cond_1

    .line 89
    iget v0, p0, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->mProgressVal:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->setProgress(I)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    :cond_2
    invoke-super {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->onStart()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->mHasStarted:Z

    .line 104
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->onStop()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->mHasStarted:Z

    .line 110
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 147
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 151
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUISpinnerDialog;->mMessage:Ljava/lang/CharSequence;

    .line 156
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "value"    # I

    .line 119
    return-void
.end method
