.class public final synthetic Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$0b_W_PrwNo0vtQVmhtlF_GwciNs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;

.field private final synthetic f$1:Landroidx/lifecycle/LiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Landroidx/lifecycle/LiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$0b_W_PrwNo0vtQVmhtlF_GwciNs;->f$0:Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;

    iput-object p2, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$0b_W_PrwNo0vtQVmhtlF_GwciNs;->f$1:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$0b_W_PrwNo0vtQVmhtlF_GwciNs;->f$0:Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;

    iget-object v1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandleBound$0b_W_PrwNo0vtQVmhtlF_GwciNs;->f$1:Landroidx/lifecycle/LiveData;

    invoke-static {v0, v1, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;->lambda$fetchData$19(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandleBound;Landroidx/lifecycle/LiveData;Ljava/lang/Object;)V

    return-void
.end method
