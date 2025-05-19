.class Lcom/coui/appcompat/widget/cardview/CardViewApi17Impl$1;
.super Ljava/lang/Object;
.source "CardViewApi17Impl.java"

# interfaces
.implements Lcom/coui/appcompat/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/cardview/CardViewApi17Impl;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/cardview/CardViewApi17Impl;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/cardview/CardViewApi17Impl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/cardview/CardViewApi17Impl;

    .line 33
    iput-object p1, p0, Lcom/coui/appcompat/widget/cardview/CardViewApi17Impl$1;->this$0:Lcom/coui/appcompat/widget/cardview/CardViewApi17Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "cornerRadius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 44
    invoke-static {}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 45
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 47
    return-void
.end method
