.class public Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat;
.super Ljava/lang/Object;
.source "COUIViewTreeObserverCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$JBViewTreeObserverCompatImpl;,
        Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$BaseViewTreeObserverCompatImpl;,
        Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$ViewTreeObserverCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$ViewTreeObserverCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 72
    .local v0, "version":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 73
    new-instance v1, Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$JBViewTreeObserverCompatImpl;

    invoke-direct {v1}, Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$JBViewTreeObserverCompatImpl;-><init>()V

    sput-object v1, Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat;->IMPL:Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$ViewTreeObserverCompatImpl;

    goto :goto_0

    .line 75
    :cond_0
    new-instance v1, Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$BaseViewTreeObserverCompatImpl;

    invoke-direct {v1}, Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$BaseViewTreeObserverCompatImpl;-><init>()V

    sput-object v1, Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat;->IMPL:Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$ViewTreeObserverCompatImpl;

    .line 77
    .end local v0    # "version":I
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p0, "vto"    # Landroid/view/ViewTreeObserver;
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 85
    sget-object v0, Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat;->IMPL:Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$ViewTreeObserverCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/widget/COUIViewTreeObserverCompat$ViewTreeObserverCompatImpl;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 86
    return-void
.end method
