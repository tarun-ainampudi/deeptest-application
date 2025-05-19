.class public Lcom/heytap/compat/os/TemperatureNative;
.super Ljava/lang/Object;
.source "TemperatureNative.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mValue"    # F

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/heytap/compat/os/TemperatureNative;->mName:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/heytap/compat/os/TemperatureNative;->mValue:F

    .line 10
    return-void
.end method


# virtual methods
.method public getmName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/heytap/compat/os/TemperatureNative;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getmValue()F
    .locals 1

    .line 21
    iget v0, p0, Lcom/heytap/compat/os/TemperatureNative;->mValue:F

    return v0
.end method

.method public setmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/heytap/compat/os/TemperatureNative;->mName:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setmValue(F)V
    .locals 0
    .param p1, "mValue"    # F

    .line 25
    iput p1, p0, Lcom/heytap/compat/os/TemperatureNative;->mValue:F

    .line 26
    return-void
.end method
