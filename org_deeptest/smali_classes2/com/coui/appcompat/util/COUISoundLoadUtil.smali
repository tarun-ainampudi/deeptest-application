.class public Lcom/coui/appcompat/util/COUISoundLoadUtil;
.super Ljava/lang/Object;
.source "COUISoundLoadUtil.java"


# static fields
.field private static sInstance:Lcom/coui/appcompat/util/COUISoundLoadUtil;


# instance fields
.field private mSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/util/COUISoundLoadUtil;->mSoundMap:Ljava/util/HashMap;

    .line 39
    invoke-direct {p0}, Lcom/coui/appcompat/util/COUISoundLoadUtil;->initSoundPool()V

    .line 40
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/coui/appcompat/util/COUISoundLoadUtil;
    .locals 2

    const-class v0, Lcom/coui/appcompat/util/COUISoundLoadUtil;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/coui/appcompat/util/COUISoundLoadUtil;->sInstance:Lcom/coui/appcompat/util/COUISoundLoadUtil;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/coui/appcompat/util/COUISoundLoadUtil;

    invoke-direct {v1}, Lcom/coui/appcompat/util/COUISoundLoadUtil;-><init>()V

    sput-object v1, Lcom/coui/appcompat/util/COUISoundLoadUtil;->sInstance:Lcom/coui/appcompat/util/COUISoundLoadUtil;

    .line 51
    :cond_0
    sget-object v1, Lcom/coui/appcompat/util/COUISoundLoadUtil;->sInstance:Lcom/coui/appcompat/util/COUISoundLoadUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initSoundPool()V
    .locals 3

    .line 55
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 56
    .local v0, "poolBuilder":Landroid/media/SoundPool$Builder;
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 58
    .local v1, "attr":Landroid/media/AudioAttributes;
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 59
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 60
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/util/COUISoundLoadUtil;->mSoundPool:Landroid/media/SoundPool;

    .line 61
    return-void
.end method

.method private querySoundEffectsEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method


# virtual methods
.method public loadFile(Ljava/lang/String;I)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 89
    iget-object v0, p0, Lcom/coui/appcompat/util/COUISoundLoadUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, p2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, "soundId":I
    return v0
.end method

.method public loadSoundFile(Landroid/content/Context;I)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileId"    # I

    .line 72
    iget-object v0, p0, Lcom/coui/appcompat/util/COUISoundLoadUtil;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/coui/appcompat/util/COUISoundLoadUtil;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/util/COUISoundLoadUtil;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 76
    .local v0, "soundId":I
    iget-object v1, p0, Lcom/coui/appcompat/util/COUISoundLoadUtil;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_0
    return v0
.end method

.method public play(Landroid/content/Context;IFFIIF)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "soundID"    # I
    .param p3, "leftVolume"    # F
    .param p4, "rightVolume"    # F
    .param p5, "priority"    # I
    .param p6, "loop"    # I
    .param p7, "rate"    # F

    .line 118
    invoke-direct {p0, p1}, Lcom/coui/appcompat/util/COUISoundLoadUtil;->querySoundEffectsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/coui/appcompat/util/COUISoundLoadUtil;->mSoundPool:Landroid/media/SoundPool;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 121
    :cond_0
    return-void
.end method

.method public setCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 129
    iget-object v0, p0, Lcom/coui/appcompat/util/COUISoundLoadUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 130
    return-void
.end method
