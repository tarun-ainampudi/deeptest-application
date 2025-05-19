.class public Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;
.super Ljava/lang/Object;
.source "COUIGradientLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIGradientLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CornerStyle"
.end annotation


# instance fields
.field public mBottomLeft:Z

.field public mBottomRight:Z

.field public mTopLeft:Z

.field public mTopRight:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0
    .param p1, "topLeft"    # Z
    .param p2, "topRight"    # Z
    .param p3, "bottomLeft"    # Z
    .param p4, "bottomRight"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;->mTopLeft:Z

    .line 61
    iput-boolean p2, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;->mTopRight:Z

    .line 62
    iput-boolean p3, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;->mBottomLeft:Z

    .line 63
    iput-boolean p4, p0, Lcom/coui/appcompat/widget/COUIGradientLinearLayout$CornerStyle;->mBottomRight:Z

    .line 64
    return-void
.end method
