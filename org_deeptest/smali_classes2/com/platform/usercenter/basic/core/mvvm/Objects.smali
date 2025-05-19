.class public Lcom/platform/usercenter/basic/core/mvvm/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 6
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 7
    if-nez p1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 9
    :cond_1
    if-nez p1, :cond_2

    .line 10
    return v0

    .line 12
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
