.class public final enum Lcom/oplus/anim/model/layer/Layer$LayerType;
.super Ljava/lang/Enum;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/model/layer/Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/anim/model/layer/Layer$LayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/anim/model/layer/Layer$LayerType;

.field public static final enum IMAGE:Lcom/oplus/anim/model/layer/Layer$LayerType;

.field public static final enum NULL:Lcom/oplus/anim/model/layer/Layer$LayerType;

.field public static final enum PRE_COMP:Lcom/oplus/anim/model/layer/Layer$LayerType;

.field public static final enum SHAPE:Lcom/oplus/anim/model/layer/Layer$LayerType;

.field public static final enum SOLID:Lcom/oplus/anim/model/layer/Layer$LayerType;

.field public static final enum TEXT:Lcom/oplus/anim/model/layer/Layer$LayerType;

.field public static final enum UNKNOWN:Lcom/oplus/anim/model/layer/Layer$LayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 203
    new-instance v0, Lcom/oplus/anim/model/layer/Layer$LayerType;

    const-string v1, "PRE_COMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$LayerType;->PRE_COMP:Lcom/oplus/anim/model/layer/Layer$LayerType;

    .line 204
    new-instance v0, Lcom/oplus/anim/model/layer/Layer$LayerType;

    const-string v1, "SOLID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oplus/anim/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$LayerType;->SOLID:Lcom/oplus/anim/model/layer/Layer$LayerType;

    .line 205
    new-instance v0, Lcom/oplus/anim/model/layer/Layer$LayerType;

    const-string v1, "IMAGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oplus/anim/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$LayerType;->IMAGE:Lcom/oplus/anim/model/layer/Layer$LayerType;

    .line 206
    new-instance v0, Lcom/oplus/anim/model/layer/Layer$LayerType;

    const-string v1, "NULL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oplus/anim/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$LayerType;->NULL:Lcom/oplus/anim/model/layer/Layer$LayerType;

    .line 207
    new-instance v0, Lcom/oplus/anim/model/layer/Layer$LayerType;

    const-string v1, "SHAPE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/oplus/anim/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$LayerType;->SHAPE:Lcom/oplus/anim/model/layer/Layer$LayerType;

    .line 208
    new-instance v0, Lcom/oplus/anim/model/layer/Layer$LayerType;

    const-string v1, "TEXT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/oplus/anim/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$LayerType;->TEXT:Lcom/oplus/anim/model/layer/Layer$LayerType;

    .line 209
    new-instance v0, Lcom/oplus/anim/model/layer/Layer$LayerType;

    const-string v1, "UNKNOWN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/oplus/anim/model/layer/Layer$LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$LayerType;->UNKNOWN:Lcom/oplus/anim/model/layer/Layer$LayerType;

    .line 202
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oplus/anim/model/layer/Layer$LayerType;

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$LayerType;->PRE_COMP:Lcom/oplus/anim/model/layer/Layer$LayerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$LayerType;->SOLID:Lcom/oplus/anim/model/layer/Layer$LayerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$LayerType;->IMAGE:Lcom/oplus/anim/model/layer/Layer$LayerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$LayerType;->NULL:Lcom/oplus/anim/model/layer/Layer$LayerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$LayerType;->SHAPE:Lcom/oplus/anim/model/layer/Layer$LayerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$LayerType;->TEXT:Lcom/oplus/anim/model/layer/Layer$LayerType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$LayerType;->UNKNOWN:Lcom/oplus/anim/model/layer/Layer$LayerType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/oplus/anim/model/layer/Layer$LayerType;->$VALUES:[Lcom/oplus/anim/model/layer/Layer$LayerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/anim/model/layer/Layer$LayerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 202
    const-class v0, Lcom/oplus/anim/model/layer/Layer$LayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/model/layer/Layer$LayerType;

    return-object v0
.end method

.method public static values()[Lcom/oplus/anim/model/layer/Layer$LayerType;
    .locals 1

    .line 202
    sget-object v0, Lcom/oplus/anim/model/layer/Layer$LayerType;->$VALUES:[Lcom/oplus/anim/model/layer/Layer$LayerType;

    invoke-virtual {v0}, [Lcom/oplus/anim/model/layer/Layer$LayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/anim/model/layer/Layer$LayerType;

    return-object v0
.end method
