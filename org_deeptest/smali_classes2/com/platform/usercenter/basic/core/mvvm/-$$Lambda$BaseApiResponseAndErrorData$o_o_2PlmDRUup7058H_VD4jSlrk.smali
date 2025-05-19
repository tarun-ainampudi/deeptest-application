.class public final synthetic Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$BaseApiResponseAndErrorData$o_o_2PlmDRUup7058H_VD4jSlrk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;


# direct methods
.method public synthetic constructor <init>(Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$BaseApiResponseAndErrorData$o_o_2PlmDRUup7058H_VD4jSlrk;->f$0:Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/platform/usercenter/basic/core/mvvm/-$$Lambda$BaseApiResponseAndErrorData$o_o_2PlmDRUup7058H_VD4jSlrk;->f$0:Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;

    check-cast p1, Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;

    invoke-static {v0, p1}, Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;->lambda$new$29(Lcom/platform/usercenter/basic/core/mvvm/BaseApiResponseAndErrorData;Lcom/platform/usercenter/basic/core/mvvm/ApiResponse;)V

    return-void
.end method
