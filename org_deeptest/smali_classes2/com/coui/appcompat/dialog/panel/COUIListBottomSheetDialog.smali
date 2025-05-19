.class public Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;
.super Ljava/lang/Object;
.source "COUIListBottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;,
        Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog$Builder;
    }
.end annotation


# instance fields
.field private mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;

    .line 44
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;
    .param p1, "x1"    # Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    .line 44
    iput-object p1, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->dismiss()V

    .line 408
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->isShowing()Z

    move-result v0

    return v0

    .line 380
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public refresh()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->refresh()V

    .line 390
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/coui/appcompat/dialog/panel/COUIListBottomSheetDialog;->mBottomSheetDialog:Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/panel/COUIBottomSheetDialog;->show()V

    .line 399
    :cond_0
    return-void
.end method
