.class public final enum Lcom/oplus/anim/RenderMode;
.super Ljava/lang/Enum;
.source "RenderMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/anim/RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/anim/RenderMode;

.field public static final enum AUTOMATIC:Lcom/oplus/anim/RenderMode;

.field public static final enum HARDWARE:Lcom/oplus/anim/RenderMode;

.field public static final enum NONE:Lcom/oplus/anim/RenderMode;

.field public static final enum SOFTWARE:Lcom/oplus/anim/RenderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/oplus/anim/RenderMode;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/RenderMode;->AUTOMATIC:Lcom/oplus/anim/RenderMode;

    .line 11
    new-instance v0, Lcom/oplus/anim/RenderMode;

    const-string v1, "HARDWARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oplus/anim/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/RenderMode;->HARDWARE:Lcom/oplus/anim/RenderMode;

    .line 12
    new-instance v0, Lcom/oplus/anim/RenderMode;

    const-string v1, "SOFTWARE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oplus/anim/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/RenderMode;->SOFTWARE:Lcom/oplus/anim/RenderMode;

    .line 13
    new-instance v0, Lcom/oplus/anim/RenderMode;

    const-string v1, "NONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oplus/anim/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/RenderMode;->NONE:Lcom/oplus/anim/RenderMode;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oplus/anim/RenderMode;

    sget-object v1, Lcom/oplus/anim/RenderMode;->AUTOMATIC:Lcom/oplus/anim/RenderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/anim/RenderMode;->HARDWARE:Lcom/oplus/anim/RenderMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/anim/RenderMode;->SOFTWARE:Lcom/oplus/anim/RenderMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/anim/RenderMode;->NONE:Lcom/oplus/anim/RenderMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oplus/anim/RenderMode;->$VALUES:[Lcom/oplus/anim/RenderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/anim/RenderMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/oplus/anim/RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/RenderMode;

    return-object v0
.end method

.method public static values()[Lcom/oplus/anim/RenderMode;
    .locals 1

    .line 9
    sget-object v0, Lcom/oplus/anim/RenderMode;->$VALUES:[Lcom/oplus/anim/RenderMode;

    invoke-virtual {v0}, [Lcom/oplus/anim/RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/anim/RenderMode;

    return-object v0
.end method
