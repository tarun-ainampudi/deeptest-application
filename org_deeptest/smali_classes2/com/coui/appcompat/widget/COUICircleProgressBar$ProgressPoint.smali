.class Lcom/coui/appcompat/widget/COUICircleProgressBar$ProgressPoint;
.super Ljava/lang/Object;
.source "COUICircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUICircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressPoint"
.end annotation


# instance fields
.field currentAlpha:F

.field final synthetic this$0:Lcom/coui/appcompat/widget/COUICircleProgressBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/COUICircleProgressBar;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar$ProgressPoint;->this$0:Lcom/coui/appcompat/widget/COUICircleProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method


# virtual methods
.method public getCurrentAlpha()F
    .locals 1

    .line 463
    iget v0, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar$ProgressPoint;->currentAlpha:F

    return v0
.end method

.method public setCurrentAlpha(F)V
    .locals 0
    .param p1, "currentAlpha"    # F

    .line 467
    iput p1, p0, Lcom/coui/appcompat/widget/COUICircleProgressBar$ProgressPoint;->currentAlpha:F

    .line 468
    return-void
.end method
