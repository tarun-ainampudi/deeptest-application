.class public abstract Lcom/oplus/stdid/a$a;
.super Landroid/os/Binder;
.source "IStdID.java"

# interfaces
.implements Lcom/oplus/stdid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/stdid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/stdid/a$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/oplus/stdid/a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oplus.stdid.IStdID"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/oplus/stdid/a;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/oplus/stdid/a;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/oplus/stdid/a$a$a;

    invoke-direct {v0, p0}, Lcom/oplus/stdid/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
