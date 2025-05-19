.class public Lcom/heytap/epona/ipc/cursor/ProviderCursor;
.super Landroid/database/MatrixCursor;
.source "ProviderCursor.java"


# static fields
.field public static final DEFAULT_COLUMNS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ProviderCursor"


# instance fields
.field private binderExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "col"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/epona/ipc/cursor/ProviderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 15
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/heytap/epona/ipc/cursor/ProviderCursor;->binderExtras:Landroid/os/Bundle;

    .line 17
    return-void
.end method

.method public static generateCursor(Landroid/os/Bundle;)Lcom/heytap/epona/ipc/cursor/ProviderCursor;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 25
    new-instance v0, Lcom/heytap/epona/ipc/cursor/ProviderCursor;

    sget-object v1, Lcom/heytap/epona/ipc/cursor/ProviderCursor;->DEFAULT_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/heytap/epona/ipc/cursor/ProviderCursor;-><init>([Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static stripBundle(Landroid/database/Cursor;)Landroid/os/Bundle;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/heytap/epona/ipc/cursor/ProviderCursor;->binderExtras:Landroid/os/Bundle;

    return-object v0
.end method
