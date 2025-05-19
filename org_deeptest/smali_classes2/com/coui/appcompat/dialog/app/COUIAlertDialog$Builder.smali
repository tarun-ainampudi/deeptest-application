.class public Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "COUIAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 358
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 359
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "theme"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 371
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 376
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 377
    invoke-static {p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    .line 379
    iput p2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->mTheme:I

    .line 380
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->create()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
    .locals 3

    .line 1264
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1265
    .local v0, "dialog":Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->mAlert:Lcom/coui/appcompat/dialog/app/AlertController;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->apply(Lcom/coui/appcompat/dialog/app/AlertController;)V

    .line 1266
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-boolean v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->setCancelable(Z)V

    .line 1267
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-boolean v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 1268
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1270
    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1271
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1272
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1275
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v0, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 746
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 747
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 748
    return-object p0
.end method

.method public bridge synthetic setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setCancelable(Z)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCancelable(Z)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .line 624
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCancelable:Z

    .line 625
    return-object p0
.end method

.method public setChangeable(Z)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "changeable"    # Z

    .line 629
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mChangeable:Z

    .line 630
    return-object p0
.end method

.method public bridge synthetic setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .line 764
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCursor:Landroid/database/Cursor;

    .line 765
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mLabelColumn:Ljava/lang/String;

    .line 766
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 767
    return-object p0
.end method

.method public bridge synthetic setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 434
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCustomTitleView:Landroid/view/View;

    .line 435
    return-object p0
.end method

.method public setDialogType(I)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "dialogType"    # I

    .line 1236
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mDialogType:I

    .line 1237
    return-object p0
.end method

.method public bridge synthetic setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setIcon(I)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(I)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 468
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIconId:I

    .line 469
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 483
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 484
    return-object p0
.end method

.method public bridge synthetic setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setIconAttribute(I)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setIconAttribute(I)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 499
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 500
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 501
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIconId:I

    .line 502
    return-object p0
.end method

.method public bridge synthetic setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setInverseBackgroundForced(Z)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1216
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mForceInverseBackground:Z

    .line 1217
    return-object p0
.end method

.method public bridge synthetic setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "summaryItemsId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 729
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 730
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaries:[Ljava/lang/CharSequence;

    .line 731
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 732
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 684
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 685
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 686
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 698
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 699
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 700
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "summaryItems"    # [Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 713
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 714
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaries:[Ljava/lang/CharSequence;

    .line 715
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 716
    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setMessage(I)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(I)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 445
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 446
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 456
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 457
    return-object p0
.end method

.method public setMessageNeedScroll(Z)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "isScroll"    # Z

    .line 1247
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mMessageNeedScroll:Z

    .line 1248
    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMultiChoiceItems(I[ZILandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2, "checkedItems"    # [Z
    .param p3, "summariesId"    # I
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 815
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 816
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 817
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItems:[Z

    .line 818
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsMultiChoice:Z

    .line 819
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaries:[Ljava/lang/CharSequence;

    .line 820
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 789
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 790
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 791
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItems:[Z

    .line 792
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsMultiChoice:Z

    .line 793
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 896
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCursor:Landroid/database/Cursor;

    .line 897
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 898
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 899
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mLabelColumn:Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsMultiChoice:Z

    .line 901
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "summaryColumn"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 928
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCursor:Landroid/database/Cursor;

    .line 929
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p5, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 930
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 931
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mLabelColumn:Ljava/lang/String;

    .line 932
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaryColumn:Ljava/lang/String;

    .line 933
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsMultiChoice:Z

    .line 934
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 842
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 843
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 844
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItems:[Z

    .line 845
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsMultiChoice:Z

    .line 846
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[Z[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "summaries"    # [Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 868
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 869
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 870
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItems:[Z

    .line 871
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsMultiChoice:Z

    .line 872
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaries:[Ljava/lang/CharSequence;

    .line 873
    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 550
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 551
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 552
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 563
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 564
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 565
    return-object p0
.end method

.method public bridge synthetic setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 575
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 576
    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 587
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 588
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 589
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 600
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 601
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 602
    return-object p0
.end method

.method public bridge synthetic setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 612
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 613
    return-object p0
.end method

.method public bridge synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 649
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 650
    return-object p0
.end method

.method public bridge synthetic setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 660
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 661
    return-object p0
.end method

.method public bridge synthetic setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1128
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1129
    return-object p0
.end method

.method public bridge synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 671
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 672
    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 513
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 514
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 515
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 526
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 527
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 528
    return-object p0
.end method

.method public bridge synthetic setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 538
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 539
    return-object p0
.end method

.method public bridge synthetic setRecycleOnMeasureEnabled(Z)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setRecycleOnMeasureEnabled(Z)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-boolean p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mRecycleOnMeasure:Z

    .line 1226
    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSingleChoiceItems(IIILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2, "checkedItem"    # I
    .param p3, "summariesId"    # I
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 980
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 981
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 982
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItem:I

    .line 983
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsSingleChoice:Z

    .line 984
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaries:[Ljava/lang/CharSequence;

    .line 985
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 954
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 955
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 956
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItem:I

    .line 957
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsSingleChoice:Z

    .line 958
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 1006
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCursor:Landroid/database/Cursor;

    .line 1007
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1008
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItem:I

    .line 1009
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mLabelColumn:Ljava/lang/String;

    .line 1010
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsSingleChoice:Z

    .line 1011
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "summaryColumn"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 1035
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCursor:Landroid/database/Cursor;

    .line 1036
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p5, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1037
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItem:I

    .line 1038
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mLabelColumn:Ljava/lang/String;

    .line 1039
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaryColumn:Ljava/lang/String;

    .line 1040
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsSingleChoice:Z

    .line 1041
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 1113
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1114
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1115
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItem:I

    .line 1116
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsSingleChoice:Z

    .line 1117
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 1059
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 1060
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1061
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItem:I

    .line 1062
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsSingleChoice:Z

    .line 1063
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;I[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "summaries"    # [Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 1081
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 1082
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1083
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mCheckedItem:I

    .line 1084
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mIsSingleChoice:Z

    .line 1085
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaries:[Ljava/lang/CharSequence;

    .line 1086
    return-object p0
.end method

.method public setSummaries([Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "summaries"    # [Ljava/lang/CharSequence;

    .line 1095
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mSummaries:[Ljava/lang/CharSequence;

    .line 1096
    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setTitle(I)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(I)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 402
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iget-object v1, v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 403
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 413
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 414
    return-object p0
.end method

.method public bridge synthetic setView(I)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setView(I)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setView(Landroid/view/View;IIII)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    invoke-virtual/range {p0 .. p5}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setView(I)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .line 1141
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mView:Landroid/view/View;

    .line 1142
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mViewLayoutResId:I

    .line 1143
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mViewSpacingSpecified:Z

    .line 1144
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1162
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mView:Landroid/view/View;

    .line 1163
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mViewLayoutResId:I

    .line 1164
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mViewSpacingSpecified:Z

    .line 1165
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1194
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput-object p1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mView:Landroid/view/View;

    .line 1195
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mViewLayoutResId:I

    .line 1196
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mViewSpacingSpecified:Z

    .line 1197
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p2, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mViewSpacingLeft:I

    .line 1198
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p3, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mViewSpacingTop:I

    .line 1199
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p4, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mViewSpacingRight:I

    .line 1200
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->P:Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;

    iput p5, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;->mViewSpacingBottom:I

    .line 1201
    return-object p0
.end method

.method public bridge synthetic show()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->show()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public show()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
    .locals 1

    .line 1291
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog$Builder;->create()Lcom/coui/appcompat/dialog/app/COUIAlertDialog;

    move-result-object v0

    .line 1292
    .local v0, "dialog":Lcom/coui/appcompat/dialog/app/COUIAlertDialog;
    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/COUIAlertDialog;->show()V

    .line 1293
    return-object v0
.end method
