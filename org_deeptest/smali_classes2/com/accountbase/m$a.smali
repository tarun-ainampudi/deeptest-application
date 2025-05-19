.class public Lcom/accountbase/m$a;
.super Ljava/lang/Object;
.source "SdkBaseProtocolTokenHandleBound.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/accountbase/m;->onChanged(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TResultType;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/accountbase/m;


# direct methods
.method public constructor <init>(Lcom/accountbase/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/accountbase/m$a;->a:Lcom/accountbase/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/accountbase/m$a;->a:Lcom/accountbase/m;

    iget-object v0, v0, Lcom/accountbase/m;->b:Lcom/accountbase/r;

    const-string v1, "2000"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "2000"

    .line 2
    invoke-static {v2}, Lcom/heytap/usercenter/accountsdk/utils/StatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v1, v2, p1}, Lcom/platform/usercenter/basic/core/mvvm/Resource;->error(ILjava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/basic/core/mvvm/Resource;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/accountbase/r;->a(Lcom/accountbase/r;Lcom/platform/usercenter/basic/core/mvvm/Resource;)V

    return-void
.end method
