.class Lcom/coui/appcompat/widget/COUIViewCompat$JbMr1ViewCompatImpl;
.super Lcom/coui/appcompat/widget/COUIViewCompat$JBViewCompatImpl;
.source "COUIViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr1ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIViewCompat$JBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawLayoutDirection(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 110
    const/4 v0, 0x2

    return v0
.end method
