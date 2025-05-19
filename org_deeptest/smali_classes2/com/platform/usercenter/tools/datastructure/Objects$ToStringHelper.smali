.class public final Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/tools/datastructure/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToStringHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private holderHead:Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

.field private holderTail:Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/platform/usercenter/tools/datastructure/Objects$1;)V

    iput-object v0, p0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->holderHead:Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    .line 206
    iget-object v0, p0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->holderHead:Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->holderTail:Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->omitNullValues:Z

    .line 213
    invoke-static {p1}, Lcom/platform/usercenter/tools/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->className:Ljava/lang/String;

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/platform/usercenter/tools/datastructure/Objects$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/platform/usercenter/tools/datastructure/Objects$1;

    .line 203
    invoke-direct {p0, p1}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addHolder()Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;
    .locals 2

    .line 422
    new-instance v0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;-><init>(Lcom/platform/usercenter/tools/datastructure/Objects$1;)V

    .line 423
    .local v0, "valueHolder":Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;
    iget-object v1, p0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->holderTail:Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    iput-object v0, v1, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;->next:Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    iput-object v0, p0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->holderTail:Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    .line 424
    return-object v0
.end method

.method private addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 428
    invoke-direct {p0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder()Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 429
    .local v0, "valueHolder":Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;
    iput-object p1, v0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 430
    return-object p0
.end method

.method private addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 434
    invoke-direct {p0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder()Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    move-result-object v0

    .line 435
    .local v0, "valueHolder":Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;
    iput-object p2, v0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    .line 436
    invoke-static {p1}, Lcom/platform/usercenter/tools/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    .line 437
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;C)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 256
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;D)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 266
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;F)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 276
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;I)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 286
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;J)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 296
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Z)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 246
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(C)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # C

    .line 333
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(D)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # D

    .line 346
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(F)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # F

    .line 359
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(I)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # I

    .line 372
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(J)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # J

    .line 385
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 307
    invoke-direct {p0, p1}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public addValue(Z)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1
    .param p1, "value"    # Z

    .line 320
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->addHolder(Ljava/lang/Object;)Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;

    move-result-object v0

    return-object v0
.end method

.method public omitNullValues()Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;
    .locals 1

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->omitNullValues:Z

    .line 226
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 403
    iget-boolean v0, p0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->omitNullValues:Z

    .line 404
    .local v0, "omitNullValuesSnapshot":Z
    const-string v1, ""

    .line 405
    .local v1, "nextSeparator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 406
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper;->holderHead:Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    .local v3, "valueHolder":Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;
    :goto_0
    iget-object v3, v3, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;->next:Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;

    if-eqz v3, :cond_3

    .line 408
    if-eqz v0, :cond_0

    iget-object v4, v3, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 409
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, ", "

    .line 412
    iget-object v4, v3, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 413
    iget-object v4, v3, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    :cond_1
    iget-object v4, v3, Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;->value:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    :cond_2
    goto :goto_0

    .line 418
    .end local v3    # "valueHolder":Lcom/platform/usercenter/tools/datastructure/Objects$ToStringHelper$ValueHolder;
    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
