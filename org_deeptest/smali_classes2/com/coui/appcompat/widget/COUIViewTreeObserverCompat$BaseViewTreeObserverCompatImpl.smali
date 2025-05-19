.class Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$BaseViewTreeObserverCompatImpl;
.super Ljava/lang/Object;
.source "COUIViewTreeObserverCompat.java"

# interfaces
.implements Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$ViewTreeObserverCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewTreeObserverCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "vto"    # Landroid/view/ViewTreeObserver;
    .param p2, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 55
    return-void
.end method
