.class Lcom/coui/appcompat/widget/COUIViewCompat$JBViewCompatImpl;
.super Lcom/coui/appcompat/widget/COUIViewCompat$BaseViewCompatImpl;
.source "COUIViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/coui/appcompat/widget/COUIViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextAlignment(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    return v0
.end method

.method public isVisibleToUser(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public setTextAlignment(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "textAlignment"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setTextAlignment(I)V

    .line 94
    return-void
.end method
