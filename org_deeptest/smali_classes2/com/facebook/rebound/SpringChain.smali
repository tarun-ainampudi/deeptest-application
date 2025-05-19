.class public Lcom/facebook/rebound/SpringChain;
.super Ljava/lang/Object;
.source "SpringChain.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# static fields
.field private static final DEFAULT_ATTACHMENT_FRICTION:I = 0xa

.field private static final DEFAULT_ATTACHMENT_TENSION:I = 0x46

.field private static final DEFAULT_MAIN_FRICTION:I = 0x6

.field private static final DEFAULT_MAIN_TENSION:I = 0x28

.field private static id:I

.field private static final registry:Lcom/facebook/rebound/SpringConfigRegistry;


# instance fields
.field private final mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private mControlSpringIndex:I

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/rebound/SpringListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private final mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field private final mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/facebook/rebound/SpringConfigRegistry;->getInstance()Lcom/facebook/rebound/SpringConfigRegistry;

    move-result-object v0

    sput-object v0, Lcom/facebook/rebound/SpringChain;->registry:Lcom/facebook/rebound/SpringConfigRegistry;

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/facebook/rebound/SpringChain;->id:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 77
    const/16 v0, 0x28

    const/4 v1, 0x6

    const/16 v2, 0x46

    const/16 v3, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/rebound/SpringChain;-><init>(IIII)V

    .line 82
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 5
    .param p1, "mainTension"    # I
    .param p2, "mainFriction"    # I
    .param p3, "attachmentTension"    # I
    .param p4, "attachmentFriction"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    .line 89
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 90
    int-to-double v0, p3

    int-to-double v2, p4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 92
    sget-object v0, Lcom/facebook/rebound/SpringChain;->registry:Lcom/facebook/rebound/SpringConfigRegistry;

    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main spring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/facebook/rebound/SpringChain;->id:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/facebook/rebound/SpringChain;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/SpringConfigRegistry;->addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)Z

    .line 93
    sget-object v0, Lcom/facebook/rebound/SpringChain;->registry:Lcom/facebook/rebound/SpringConfigRegistry;

    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment spring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/facebook/rebound/SpringChain;->id:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/facebook/rebound/SpringChain;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/SpringConfigRegistry;->addSpringConfig(Lcom/facebook/rebound/SpringConfig;Ljava/lang/String;)Z

    .line 94
    return-void
.end method

.method public static create()Lcom/facebook/rebound/SpringChain;
    .locals 1

    .line 42
    new-instance v0, Lcom/facebook/rebound/SpringChain;

    invoke-direct {v0}, Lcom/facebook/rebound/SpringChain;-><init>()V

    return-object v0
.end method

.method public static create(IIII)Lcom/facebook/rebound/SpringChain;
    .locals 1
    .param p0, "mainTension"    # I
    .param p1, "mainFriction"    # I
    .param p2, "attachmentTension"    # I
    .param p3, "attachmentFriction"    # I

    .line 58
    new-instance v0, Lcom/facebook/rebound/SpringChain;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/rebound/SpringChain;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public addSpring(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/SpringChain;
    .locals 2
    .param p1, "listener"    # Lcom/facebook/rebound/SpringListener;

    .line 112
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 116
    .local v0, "spring":Lcom/facebook/rebound/Spring;
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-object p0
.end method

.method public getAllSprings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/rebound/Spring;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getAttachmentSpringConfig()Lcom/facebook/rebound/SpringConfig;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    return-object v0
.end method

.method public getControlSpring()Lcom/facebook/rebound/Spring;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    return-object v0
.end method

.method public getMainSpringConfig()Lcom/facebook/rebound/SpringConfig;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    return-object v0
.end method

.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 2
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 190
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 191
    .local v0, "idx":I
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/SpringListener;

    invoke-interface {v1, p1}, Lcom/facebook/rebound/SpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    .line 192
    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 2
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 184
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 185
    .local v0, "idx":I
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/SpringListener;

    invoke-interface {v1, p1}, Lcom/facebook/rebound/SpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    .line 186
    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .locals 2
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 196
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 197
    .local v0, "idx":I
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/SpringListener;

    invoke-interface {v1, p1}, Lcom/facebook/rebound/SpringListener;->onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V

    .line 198
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 8
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 161
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 162
    .local v0, "idx":I
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/SpringListener;

    .line 163
    .local v1, "listener":Lcom/facebook/rebound/SpringListener;
    const/4 v2, -0x1

    .line 164
    .local v2, "above":I
    const/4 v3, -0x1

    .line 165
    .local v3, "below":I
    iget v4, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    if-ne v0, v4, :cond_0

    .line 166
    add-int/lit8 v3, v0, -0x1

    .line 167
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget v4, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    if-ge v0, v4, :cond_1

    .line 169
    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    .line 170
    :cond_1
    iget v4, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    if-le v0, v4, :cond_2

    .line 171
    add-int/lit8 v2, v0, 0x1

    .line 173
    :cond_2
    :goto_0
    const/4 v4, -0x1

    if-le v2, v4, :cond_3

    iget-object v5, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 174
    iget-object v5, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 176
    :cond_3
    if-le v3, v4, :cond_4

    iget-object v4, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 177
    iget-object v4, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/rebound/Spring;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 179
    :cond_4
    invoke-interface {v1, p1}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    .line 180
    return-void
.end method

.method public setControlSpringIndex(I)Lcom/facebook/rebound/SpringChain;
    .locals 4
    .param p1, "i"    # I

    .line 128
    iput p1, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    .line 129
    iget-object v0, p0, Lcom/facebook/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/facebook/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/Spring;

    .line 130
    .local v0, "controlSpring":Lcom/facebook/rebound/Spring;
    if-nez v0, :cond_0

    .line 131
    const/4 v1, 0x0

    return-object v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/facebook/rebound/SpringChain;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/SpringSystem;->getAllSprings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/rebound/Spring;

    .line 134
    .local v2, "spring":Lcom/facebook/rebound/Spring;
    iget-object v3, p0, Lcom/facebook/rebound/SpringChain;->mAttachmentSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v2, v3}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 135
    .end local v2    # "spring":Lcom/facebook/rebound/Spring;
    goto :goto_0

    .line 136
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rebound/SpringChain;->getControlSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rebound/SpringChain;->mMainSpringConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 137
    return-object p0
.end method
