.class public interface abstract Lcom/heytap/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;
.super Ljava/lang/Object;
.source "FingerprintManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/fingerprint/FingerprintManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OpticalFingerprintListenerCallbackNative"
.end annotation


# virtual methods
.method public abstract onOpticalFingerprintUpdate(I)V
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end method
