.class public abstract Landroid/app/IWallpaperManagerCallbackNative$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManagerCallbackNative.java"

# interfaces
.implements Landroid/app/IWallpaperManagerCallbackNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManagerCallbackNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManagerCallbackNative"

.field static final TRANSACTION_onWallpaperChanged:I = 0x1

.field static final TRANSACTION_onWallpaperColorsChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.app.IWallpaperManagerCallbackNative"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManagerCallbackNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallbackNative;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "android.app.IWallpaperManagerCallbackNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IWallpaperManagerCallbackNative;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/app/IWallpaperManagerCallbackNative;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/app/IWallpaperManagerCallbackNative;
    .locals 1

    .line 180
    sget-object v0, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;->sDefaultImpl:Landroid/app/IWallpaperManagerCallbackNative;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/app/IWallpaperManagerCallbackNative;)Z
    .locals 1
    .param p0, "impl"    # Landroid/app/IWallpaperManagerCallbackNative;

    .line 173
    sget-object v0, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;->sDefaultImpl:Landroid/app/IWallpaperManagerCallbackNative;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 174
    sput-object p0, Landroid/app/IWallpaperManagerCallbackNative$Stub$Proxy;->sDefaultImpl:Landroid/app/IWallpaperManagerCallbackNative;

    .line 175
    const/4 v0, 0x1

    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 56
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const-string v0, "android.app.IWallpaperManagerCallbackNative"

    .line 61
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 77
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    goto :goto_0

    .line 83
    :cond_0
    const/4 v1, 0x0

    .line 86
    .local v1, "_arg0":Landroid/app/WallpaperColors;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 89
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/IWallpaperManagerCallbackNative$Stub;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v2

    .line 70
    .end local v1    # "_arg0":Landroid/app/WallpaperColors;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/IWallpaperManagerCallbackNative$Stub;->onWallpaperChanged()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    return v2

    .line 65
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
