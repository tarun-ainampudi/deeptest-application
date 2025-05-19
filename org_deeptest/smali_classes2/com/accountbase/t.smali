.class public Lcom/accountbase/t;
.super Ljava/lang/Object;
.source "UserInfoRepository.java"


# instance fields
.field public final a:Lcom/accountbase/j;

.field public final b:Lcom/accountbase/l;


# direct methods
.method public constructor <init>(Lcom/accountbase/j;Lcom/accountbase/l;)V
    .locals 0
    .param p1    # Lcom/accountbase/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/accountbase/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/accountbase/t;->a:Lcom/accountbase/j;

    .line 3
    iput-object p2, p0, Lcom/accountbase/t;->b:Lcom/accountbase/l;

    return-void
.end method
