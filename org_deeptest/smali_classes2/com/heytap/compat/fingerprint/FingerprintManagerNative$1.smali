.class final Lcom/heytap/compat/fingerprint/FingerprintManagerNative$1;
.super Ljava/lang/Object;
.source "FingerprintManagerNative.java"

# interfaces
.implements Lcom/color/inner/hardware/fingerprint/FingerprintManagerWrapper$OpticalFingerprintListenerCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/fingerprint/FingerprintManagerNative;->regsiterOpticalFingerprintListener(Landroid/hardware/fingerprint/FingerprintManager;Lcom/heytap/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/heytap/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;


# direct methods
.method constructor <init>(Lcom/heytap/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/heytap/compat/fingerprint/FingerprintManagerNative$1;->val$callback:Lcom/heytap/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpticalFingerprintUpdate(I)V
    .locals 1
    .param p1, "i"    # I

    .line 91
    iget-object v0, p0, Lcom/heytap/compat/fingerprint/FingerprintManagerNative$1;->val$callback:Lcom/heytap/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;

    invoke-interface {v0, p1}, Lcom/heytap/compat/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;->onOpticalFingerprintUpdate(I)V

    .line 92
    return-void
.end method
