.class public La/a/a/b/b$a;
.super Ljava/lang/Object;
.source "IDHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/b/b;


# direct methods
.method public constructor <init>(La/a/a/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/a/b/b$a;->a:La/a/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "2014"

    .line 1
    invoke-static {p1}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, La/a/a/b/b$a;->a:La/a/a/b/b;

    invoke-static {p2}, La/a/a/a$a;->a(Landroid/os/IBinder;)La/a/a/a;

    move-result-object p2

    .line 3
    iput-object p2, p1, La/a/a/b/b;->a:La/a/a/a;

    .line 4
    iget-object p1, p0, La/a/a/b/b$a;->a:La/a/a/b/b;

    .line 5
    iget-object p1, p1, La/a/a/b/b;->d:Ljava/lang/Object;

    .line 6
    monitor-enter p1

    :try_start_0
    const-string p2, "2015"

    .line 7
    invoke-static {p2}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, La/a/a/b/b$a;->a:La/a/a/b/b;

    .line 9
    iget-object p2, p2, La/a/a/b/b;->d:Ljava/lang/Object;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 11
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "2016"

    .line 1
    invoke-static {p1}, La/a/a/b/d;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, La/a/a/b/b$a;->a:La/a/a/b/b;

    .line 3
    const/4 v0, 0x0

    iput-object v0, p1, La/a/a/b/b;->a:La/a/a/a;

    return-void
.end method
