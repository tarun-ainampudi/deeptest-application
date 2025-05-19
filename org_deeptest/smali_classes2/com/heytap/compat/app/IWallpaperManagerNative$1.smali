.class final Lcom/heytap/compat/app/IWallpaperManagerNative$1;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "IWallpaperManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/app/IWallpaperManagerNative;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallbackNative;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/app/IWallpaperManagerCallbackNative;


# direct methods
.method constructor <init>(Landroid/app/IWallpaperManagerCallbackNative;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/heytap/compat/app/IWallpaperManagerNative$1;->val$callback:Landroid/app/IWallpaperManagerCallbackNative;

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/heytap/compat/app/IWallpaperManagerNative$1;->val$callback:Landroid/app/IWallpaperManagerCallbackNative;

    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallbackNative;->onWallpaperChanged()V

    .line 70
    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 1
    .param p1, "colors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/heytap/compat/app/IWallpaperManagerNative$1;->val$callback:Landroid/app/IWallpaperManagerCallbackNative;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManagerCallbackNative;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V

    .line 75
    return-void
.end method
