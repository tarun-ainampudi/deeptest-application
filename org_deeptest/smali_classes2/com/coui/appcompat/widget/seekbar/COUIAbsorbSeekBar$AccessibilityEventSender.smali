.class Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "COUIAbsorbSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;
    .param p2, "x1"    # Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$1;

    .line 667
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;-><init>(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 670
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar$AccessibilityEventSender;->this$0:Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->access$1000(Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/seekbar/COUIAbsorbSeekBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 673
    :cond_0
    return-void
.end method
