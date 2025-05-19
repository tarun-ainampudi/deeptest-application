.class public Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "COUIAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    }
.end annotation


# static fields
.field static final LAYOUT_HINT_NONE:I = 0x0

.field static final LAYOUT_HINT_SIDE:I = 0x1

.field public static final TYPE_BOTTOM:I = 0x1

.field public static final TYPE_CENTER:I


# instance fields
.field final mAlert:Lcom/coui/appcompat/dialog/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 101
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 117
    invoke-static {p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 118
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIAlertController;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/coui/appcompat/dialog/app/COUIAlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    .line 120
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 137
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->setCancelable(Z)V

    .line 138
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 139
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resid"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 143
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 144
    return p1

    .line 146
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 147
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$attr;->couiAlertDialogTheme:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 148
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .line 163
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 317
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/AlertController;->installContent()V

    .line 318
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 322
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/dialog/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x1

    return v0

    .line 325
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 330
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/dialog/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x1

    return v0

    .line 333
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 260
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/dialog/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 261
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 278
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/dialog/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 279
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .line 245
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/dialog/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1
    .param p1, "layoutHint"    # I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/app/AlertController;->setButtonPanelLayoutHint(I)V

    .line 231
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 288
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/app/AlertController;->setIcon(I)V

    .line 289
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 297
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 298
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .line 306
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 307
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 308
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/app/AlertController;->setIcon(I)V

    .line 309
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 196
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 177
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/app/AlertController;->setView(Landroid/view/View;)V

    .line 207
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 221
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/dialog/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 222
    return-void
.end method
