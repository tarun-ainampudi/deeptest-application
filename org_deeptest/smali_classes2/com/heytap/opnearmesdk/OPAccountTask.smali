.class public Lcom/heytap/opnearmesdk/OPAccountTask;
.super Landroid/os/AsyncTask;
.source "OPAccountTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/accounts/AccountManagerFuture<",
        "Landroid/os/Bundle;",
        ">;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mOnTaskFinishedListener:Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/accounts/AccountManagerFuture;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 31
    .local p1, "accountManagerFutures":[Landroid/accounts/AccountManagerFuture;, "[Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_1

    .line 34
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 32
    :catch_2
    move-exception v0

    .line 33
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .line 38
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :goto_0
    nop

    .line 39
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [Landroid/accounts/AccountManagerFuture;

    invoke-virtual {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountTask;->doInBackground([Landroid/accounts/AccountManagerFuture;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountTask;->mOnTaskFinishedListener:Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;

    invoke-interface {v0, p1}, Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;->onTaskSuccessfully(Landroid/os/Bundle;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/heytap/opnearmesdk/OPAccountTask;->mOnTaskFinishedListener:Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;

    invoke-interface {v0}, Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;->onTaskFailed()V

    .line 51
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/heytap/opnearmesdk/OPAccountTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method

.method setOnAccountDataFinishedListener(Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;

    .line 25
    iput-object p1, p0, Lcom/heytap/opnearmesdk/OPAccountTask;->mOnTaskFinishedListener:Lcom/heytap/opnearmesdk/OPAccountTask$OnTaskFinishedListener;

    .line 26
    return-void
.end method
