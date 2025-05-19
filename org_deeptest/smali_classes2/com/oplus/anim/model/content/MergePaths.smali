.class public Lcom/oplus/anim/model/content/MergePaths;
.super Ljava/lang/Object;
.source "MergePaths.java"

# interfaces
.implements Lcom/oplus/anim/model/content/ContentModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;
    }
.end annotation


# instance fields
.field private final hidden:Z

.field private final mode:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;
    .param p3, "hidden"    # Z

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oplus/anim/model/content/MergePaths;->name:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/oplus/anim/model/content/MergePaths;->mode:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    .line 21
    iput-boolean p3, p0, Lcom/oplus/anim/model/content/MergePaths;->hidden:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getMode()Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/oplus/anim/model/content/MergePaths;->mode:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/oplus/anim/model/content/MergePaths;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/MergePaths;->hidden:Z

    return v0
.end method

.method public toContent(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/BaseLayer;)Lcom/oplus/anim/animation/content/Content;
    .locals 2
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;
    .param p2, "layer"    # Lcom/oplus/anim/model/layer/BaseLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePathsForKitKatAndAbove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const-string v0, "Animation contains merge paths but they are disabled."

    invoke-static {v0}, Lcom/oplus/anim/L;->warn(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_BUILD_LAYER:Z

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MergePaths to MergePathsContent, layer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 46
    :cond_1
    new-instance v0, Lcom/oplus/anim/animation/content/MergePathsContent;

    invoke-direct {v0, p0}, Lcom/oplus/anim/animation/content/MergePathsContent;-><init>(Lcom/oplus/anim/model/content/MergePaths;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MergePaths{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/model/content/MergePaths;->mode:Lcom/oplus/anim/model/content/MergePaths$MergePathsMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
