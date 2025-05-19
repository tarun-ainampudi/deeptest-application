.class public Lcom/heytap/compat/telephony/PhoneStateListenerNative;
.super Ljava/lang/Object;
.source "PhoneStateListenerNative.java"


# instance fields
.field private mToken:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heytap/compat/telephony/PhoneStateListenerNative;->mToken:J

    .line 19
    return-void
.end method


# virtual methods
.method public getToken()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/heytap/compat/telephony/PhoneStateListenerNative;->mToken:J

    return-wide v0
.end method

.method public onCallStateChanged(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .locals 0
    .param p1, "phoneStateListener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "state"    # I
    .param p3, "incomingNumber"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public onPreciseCallStateChanged(Lcom/heytap/compat/telephony/PreciseCallStateNative;)V
    .locals 0
    .param p1, "callState"    # Lcom/heytap/compat/telephony/PreciseCallStateNative;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 38
    return-void
.end method

.method public onSrvccStateChanged(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .param p1, "phoneStateListener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "srvccState"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 25
    return-void
.end method
