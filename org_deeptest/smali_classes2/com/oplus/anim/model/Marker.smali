.class public Lcom/oplus/anim/model/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# instance fields
.field public final durationFrames:F

.field public final name:Ljava/lang/String;

.field public final startFrame:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startFrame"    # F
    .param p3, "durationFrames"    # F

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/oplus/anim/model/Marker;->name:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/oplus/anim/model/Marker;->durationFrames:F

    .line 12
    iput p2, p0, Lcom/oplus/anim/model/Marker;->startFrame:F

    .line 13
    return-void
.end method
