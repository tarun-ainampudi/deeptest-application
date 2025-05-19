.class public Lcom/heytap/compat/telephony/PreciseCallStateNative;
.super Ljava/lang/Object;
.source "PreciseCallStateNative.java"


# static fields
.field public static final PRECISE_CALL_STATE_NOT_VALID:I = -0x1


# instance fields
.field private mBackgroundCallState:I

.field private mForegroundCallState:I

.field private mRingingCallState:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "ringingCall"    # I
    .param p2, "foregroundCall"    # I
    .param p3, "backgroundCall"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/heytap/compat/telephony/PreciseCallStateNative;->mRingingCallState:I

    .line 8
    iput v0, p0, Lcom/heytap/compat/telephony/PreciseCallStateNative;->mForegroundCallState:I

    .line 9
    iput v0, p0, Lcom/heytap/compat/telephony/PreciseCallStateNative;->mBackgroundCallState:I

    .line 14
    iput p1, p0, Lcom/heytap/compat/telephony/PreciseCallStateNative;->mRingingCallState:I

    .line 15
    iput p2, p0, Lcom/heytap/compat/telephony/PreciseCallStateNative;->mForegroundCallState:I

    .line 16
    iput p3, p0, Lcom/heytap/compat/telephony/PreciseCallStateNative;->mBackgroundCallState:I

    .line 17
    return-void
.end method


# virtual methods
.method public getBackgroundCallState()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/heytap/compat/telephony/PreciseCallStateNative;->mBackgroundCallState:I

    return v0
.end method

.method public getForegroundCallState()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/heytap/compat/telephony/PreciseCallStateNative;->mForegroundCallState:I

    return v0
.end method

.method public getRingingCallState()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/heytap/compat/telephony/PreciseCallStateNative;->mRingingCallState:I

    return v0
.end method
