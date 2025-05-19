.class public Lcom/oplus/anim/model/content/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final inverted:Z

.field private final maskMode:Lcom/oplus/anim/model/content/Mask$MaskMode;

.field private final maskPath:Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

.field private final opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/model/content/Mask$MaskMode;Lcom/oplus/anim/model/animatable/AnimatableShapeValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Z)V
    .locals 0
    .param p1, "maskMode"    # Lcom/oplus/anim/model/content/Mask$MaskMode;
    .param p2, "maskPath"    # Lcom/oplus/anim/model/animatable/AnimatableShapeValue;
    .param p3, "opacity"    # Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .param p4, "inverted"    # Z

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oplus/anim/model/content/Mask;->maskMode:Lcom/oplus/anim/model/content/Mask$MaskMode;

    .line 13
    iput-object p2, p0, Lcom/oplus/anim/model/content/Mask;->maskPath:Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    .line 14
    iput-object p3, p0, Lcom/oplus/anim/model/content/Mask;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    .line 15
    iput-boolean p4, p0, Lcom/oplus/anim/model/content/Mask;->inverted:Z

    .line 16
    return-void
.end method


# virtual methods
.method public getMaskMode()Lcom/oplus/anim/model/content/Mask$MaskMode;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/oplus/anim/model/content/Mask;->maskMode:Lcom/oplus/anim/model/content/Mask$MaskMode;

    return-object v0
.end method

.method public getMaskPath()Lcom/oplus/anim/model/animatable/AnimatableShapeValue;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/oplus/anim/model/content/Mask;->maskPath:Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    return-object v0
.end method

.method public getOpacity()Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/oplus/anim/model/content/Mask;->opacity:Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public isInverted()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/oplus/anim/model/content/Mask;->inverted:Z

    return v0
.end method
