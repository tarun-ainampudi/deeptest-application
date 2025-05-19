.class public Lcom/oplus/stdid/sdk/b$b;
.super Ljava/lang/Object;
.source "StdIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/stdid/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/oplus/stdid/sdk/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oplus/stdid/sdk/b;

    .line 2
    invoke-direct {v0}, Lcom/oplus/stdid/sdk/b;-><init>()V

    .line 3
    sput-object v0, Lcom/oplus/stdid/sdk/b$b;->a:Lcom/oplus/stdid/sdk/b;

    return-void
.end method
