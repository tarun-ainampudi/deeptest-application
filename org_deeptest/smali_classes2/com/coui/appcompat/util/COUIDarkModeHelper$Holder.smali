.class Lcom/coui/appcompat/util/COUIDarkModeHelper$Holder;
.super Ljava/lang/Object;
.source "COUIDarkModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/util/COUIDarkModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/coui/appcompat/util/COUIDarkModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/coui/appcompat/util/COUIDarkModeHelper;

    invoke-direct {v0}, Lcom/coui/appcompat/util/COUIDarkModeHelper;-><init>()V

    sput-object v0, Lcom/coui/appcompat/util/COUIDarkModeHelper$Holder;->INSTANCE:Lcom/coui/appcompat/util/COUIDarkModeHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
