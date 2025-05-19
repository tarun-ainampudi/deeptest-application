.class public final synthetic Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandle$IJr83jVaCzMzSlQc9TqSBTreFMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandle$IJr83jVaCzMzSlQc9TqSBTreFMo;->f$0:Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/protocol/-$$Lambda$BaseProtocolTokenHandle$IJr83jVaCzMzSlQc9TqSBTreFMo;->f$0:Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;

    check-cast p1, Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;->lambda$null$13(Lcom/platform/usercenter/basic/core/mvvm/protocol/BaseProtocolTokenHandle;Lcom/platform/usercenter/basic/core/mvvm/CoreResponse;)V

    return-void
.end method
