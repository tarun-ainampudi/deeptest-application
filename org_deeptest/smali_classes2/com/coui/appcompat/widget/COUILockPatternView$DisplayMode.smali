.class public final enum Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "COUILockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

.field public static final enum Animate:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

.field public static final enum Correct:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

.field public static final enum FingerprintMatch:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

.field public static final enum FingerprintNoMatch:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

.field public static final enum Wrong:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 344
    new-instance v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    const-string v1, "Correct"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Correct:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 349
    new-instance v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    const-string v1, "Animate"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Animate:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 354
    new-instance v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    const-string v1, "Wrong"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Wrong:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 361
    new-instance v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    const-string v1, "FingerprintMatch"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->FingerprintMatch:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 366
    new-instance v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    const-string v1, "FingerprintNoMatch"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    .line 339
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Correct:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Animate:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->Wrong:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->FingerprintMatch:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->FingerprintNoMatch:Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->$VALUES:[Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 339
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 339
    const-class v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;
    .locals 1

    .line 339
    sget-object v0, Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->$VALUES:[Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/appcompat/widget/COUILockPatternView$DisplayMode;

    return-object v0
.end method
