.class public Lcom/coui/appcompat/widget/COUIViewCompat;
.super Ljava/lang/Object;
.source "COUIViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/COUIViewCompat$JbMr1ViewCompatImpl;,
        Lcom/coui/appcompat/widget/COUIViewCompat$JBViewCompatImpl;,
        Lcom/coui/appcompat/widget/COUIViewCompat$BaseViewCompatImpl;,
        Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .local v0, "version":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 118
    new-instance v1, Lcom/coui/appcompat/widget/COUIViewCompat$JbMr1ViewCompatImpl;

    invoke-direct {v1}, Lcom/coui/appcompat/widget/COUIViewCompat$JbMr1ViewCompatImpl;-><init>()V

    sput-object v1, Lcom/coui/appcompat/widget/COUIViewCompat;->IMPL:Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 119
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 120
    new-instance v1, Lcom/coui/appcompat/widget/COUIViewCompat$JBViewCompatImpl;

    invoke-direct {v1}, Lcom/coui/appcompat/widget/COUIViewCompat$JBViewCompatImpl;-><init>()V

    sput-object v1, Lcom/coui/appcompat/widget/COUIViewCompat;->IMPL:Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 122
    :cond_1
    new-instance v1, Lcom/coui/appcompat/widget/COUIViewCompat$BaseViewCompatImpl;

    invoke-direct {v1}, Lcom/coui/appcompat/widget/COUIViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v1, Lcom/coui/appcompat/widget/COUIViewCompat;->IMPL:Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;

    .line 124
    .end local v0    # "version":I
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRawLayoutDirection(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 147
    sget-object v0, Lcom/coui/appcompat/widget/COUIViewCompat;->IMPL:Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;->getRawLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getTextAlignment(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 131
    sget-object v0, Lcom/coui/appcompat/widget/COUIViewCompat;->IMPL:Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;->getTextAlignment(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static isVisibleToUser(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 155
    sget-object v0, Lcom/coui/appcompat/widget/COUIViewCompat;->IMPL:Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;->isVisibleToUser(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static setTextAlignment(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "textAlignment"    # I

    .line 139
    sget-object v0, Lcom/coui/appcompat/widget/COUIViewCompat;->IMPL:Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/widget/COUIViewCompat$ViewCompatImpl;->setTextAlignment(Landroid/view/View;I)V

    .line 140
    return-void
.end method
