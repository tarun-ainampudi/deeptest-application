.class public La/a/a/b/b$b;
.super Ljava/lang/Object;
.source "IDHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:La/a/a/b/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/a/a/b/b;

    .line 2
    invoke-direct {v0}, La/a/a/b/b;-><init>()V

    .line 3
    sput-object v0, La/a/a/b/b$b;->a:La/a/a/b/b;

    return-void
.end method
