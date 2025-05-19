.class public abstract Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;
.super Ljava/lang/Object;
.source "IHwBinderNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/os/IHwBinderNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DeathRecipientNative"
.end annotation


# instance fields
.field private final mDeathRecipientWrapper:Lcom/color/inner/os/IHwBinderWrapper$DeathRecipientWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative$1;

    invoke-direct {v0, p0}, Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative$1;-><init>(Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;)V

    iput-object v0, p0, Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;->mDeathRecipientWrapper:Lcom/color/inner/os/IHwBinderWrapper$DeathRecipientWrapper;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;)Lcom/color/inner/os/IHwBinderWrapper$DeathRecipientWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;

    .line 34
    iget-object v0, p0, Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;->mDeathRecipientWrapper:Lcom/color/inner/os/IHwBinderWrapper$DeathRecipientWrapper;

    return-object v0
.end method


# virtual methods
.method public abstract serviceDied(J)V
    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end method
