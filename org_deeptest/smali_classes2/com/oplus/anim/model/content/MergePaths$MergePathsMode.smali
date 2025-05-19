.class public final enum Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;
.super Ljava/lang/Enum;
.source "MergePaths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/model/content/MergePaths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MergePathsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

.field public static final enum ADD:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

.field public static final enum EXCLUDE_INTERSECTIONS:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

.field public static final enum INTERSECT:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

.field public static final enum MERGE:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

.field public static final enum SUBTRACT:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 55
    new-instance v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    const-string v1, "MERGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    .line 56
    new-instance v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    const-string v1, "ADD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->ADD:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    .line 57
    new-instance v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    const-string v1, "SUBTRACT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->SUBTRACT:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    .line 58
    new-instance v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    const-string v1, "INTERSECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->INTERSECT:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    .line 59
    new-instance v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    const-string v1, "EXCLUDE_INTERSECTIONS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->EXCLUDE_INTERSECTIONS:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    sget-object v1, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->ADD:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->SUBTRACT:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->INTERSECT:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->EXCLUDE_INTERSECTIONS:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->$VALUES:[Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forId(I)Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;
    .locals 1
    .param p0, "id"    # I

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 74
    sget-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    return-object v0

    .line 72
    :pswitch_0
    sget-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->EXCLUDE_INTERSECTIONS:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    return-object v0

    .line 70
    :pswitch_1
    sget-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->INTERSECT:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    return-object v0

    .line 68
    :pswitch_2
    sget-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->SUBTRACT:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    return-object v0

    .line 66
    :pswitch_3
    sget-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->ADD:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    return-object v0

    .line 64
    :pswitch_4
    sget-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    return-object v0
.end method

.method public static values()[Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;
    .locals 1

    .line 54
    sget-object v0, Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->$VALUES:[Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v0}, [Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    return-object v0
.end method
