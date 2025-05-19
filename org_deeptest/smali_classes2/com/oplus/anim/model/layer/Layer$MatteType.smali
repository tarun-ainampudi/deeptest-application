.class public final enum Lcom/oplus/anim/model/layer/Layer$MatteType;
.super Ljava/lang/Enum;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/model/layer/Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/anim/model/layer/Layer$MatteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/anim/model/layer/Layer$MatteType;

.field public static final enum ADD:Lcom/oplus/anim/model/layer/Layer$MatteType;

.field public static final enum INVERT:Lcom/oplus/anim/model/layer/Layer$MatteType;

.field public static final enum NONE:Lcom/oplus/anim/model/layer/Layer$MatteType;

.field public static final enum UNKNOWN:Lcom/oplus/anim/model/layer/Layer$MatteType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 213
    new-instance v0, Lcom/oplus/anim/model/layer/Layer$MatteType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$MatteType;->NONE:Lcom/oplus/anim/model/layer/Layer$MatteType;

    .line 214
    new-instance v0, Lcom/oplus/anim/model/layer/Layer$MatteType;

    const-string v1, "ADD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oplus/anim/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$MatteType;->ADD:Lcom/oplus/anim/model/layer/Layer$MatteType;

    .line 215
    new-instance v0, Lcom/oplus/anim/model/layer/Layer$MatteType;

    const-string v1, "INVERT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oplus/anim/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$MatteType;->INVERT:Lcom/oplus/anim/model/layer/Layer$MatteType;

    .line 216
    new-instance v0, Lcom/oplus/anim/model/layer/Layer$MatteType;

    const-string v1, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oplus/anim/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$MatteType;->UNKNOWN:Lcom/oplus/anim/model/layer/Layer$MatteType;

    .line 212
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oplus/anim/model/layer/Layer$MatteType;

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$MatteType;->NONE:Lcom/oplus/anim/model/layer/Layer$MatteType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$MatteType;->ADD:Lcom/oplus/anim/model/layer/Layer$MatteType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$MatteType;->INVERT:Lcom/oplus/anim/model/layer/Layer$MatteType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$MatteType;->UNKNOWN:Lcom/oplus/anim/model/layer/Layer$MatteType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$MatteType;->$VALUES:[Lcom/oplus/anim/model/layer/Layer$MatteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/anim/model/layer/Layer$MatteType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 212
    const-class v0, Lcom/oplus/anim/model/layer/Layer$MatteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/model/layer/Layer$MatteType;

    return-object v0
.end method

.method public static values()[Lcom/oplus/anim/model/layer/Layer$MatteType;
    .locals 1

    .line 212
    sget-object v0, Lcom/oplus/anim/model/layer/Layer$MatteType;->$VALUES:[Lcom/oplus/anim/model/layer/Layer$MatteType;

    invoke-virtual {v0}, [Lcom/oplus/anim/model/layer/Layer$MatteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/anim/model/layer/Layer$MatteType;

    return-object v0
.end method
