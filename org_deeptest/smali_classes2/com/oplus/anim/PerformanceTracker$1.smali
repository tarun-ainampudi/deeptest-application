.class Lcom/oplus/anim/PerformanceTracker$1;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/PerformanceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/anim/PerformanceTracker;


# direct methods
.method constructor <init>(Lcom/oplus/anim/PerformanceTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/anim/PerformanceTracker;

    .line 22
    iput-object p1, p0, Lcom/oplus/anim/PerformanceTracker$1;->this$0:Lcom/oplus/anim/PerformanceTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    .line 25
    .local p1, "o1":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    .local p2, "o2":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 26
    .local v0, "r1":F
    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 27
    .local v1, "r2":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 28
    const/4 v2, 0x1

    return v2

    .line 29
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 30
    const/4 v2, -0x1

    return v2

    .line 32
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/PerformanceTracker$1;->compare(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method
