.class Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;
.super Ljava/lang/Object;
.source "COUINavigationMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemTipBean"
.end annotation


# instance fields
.field private tip:I

.field private tipType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "tip"    # I
    .param p2, "tipType"    # I

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;->tip:I

    .line 521
    iput p2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;->tipType:I

    .line 522
    return-void
.end method


# virtual methods
.method public getTip()I
    .locals 1

    .line 525
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;->tip:I

    return v0
.end method

.method public getTipType()I
    .locals 1

    .line 533
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;->tipType:I

    return v0
.end method

.method public setTip(I)V
    .locals 0
    .param p1, "tip"    # I

    .line 529
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;->tip:I

    .line 530
    return-void
.end method

.method public setTipType(I)V
    .locals 0
    .param p1, "tipType"    # I

    .line 537
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView$ItemTipBean;->tipType:I

    .line 538
    return-void
.end method
