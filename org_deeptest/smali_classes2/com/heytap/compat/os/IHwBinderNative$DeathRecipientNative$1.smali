.class Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative$1;
.super Lcom/color/inner/os/IHwBinderWrapper$DeathRecipientWrapper;
.source "IHwBinderNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;


# direct methods
.method constructor <init>(Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;)V
    .locals 0
    .param p1, "this$0"    # Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;

    .line 39
    iput-object p1, p0, Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative$1;->this$0:Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;

    invoke-direct {p0}, Lcom/color/inner/os/IHwBinderWrapper$DeathRecipientWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 1
    .param p1, "cookie"    # J

    .line 42
    iget-object v0, p0, Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative$1;->this$0:Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;

    invoke-virtual {v0, p1, p2}, Lcom/heytap/compat/os/IHwBinderNative$DeathRecipientNative;->serviceDied(J)V

    .line 43
    return-void
.end method
