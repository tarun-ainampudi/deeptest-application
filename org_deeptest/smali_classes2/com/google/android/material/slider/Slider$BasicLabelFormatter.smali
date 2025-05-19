.class public final Lcom/google/android/material/slider/Slider$BasicLabelFormatter;
.super Ljava/lang/Object;
.source "Slider.java"

# interfaces
.implements Lcom/google/android/material/slider/Slider$LabelFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BasicLabelFormatter"
.end annotation


# static fields
.field private static final BILLION:I = 0x3b9aca00

.field private static final MILLION:I = 0xf4240

.field private static final THOUSAND:I = 0x3e8

.field private static final TRILLION:J = 0xe8d4a51000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # F
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 322
    const v0, 0x5368d4a5    # 1.0E12f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    .line 323
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1fT"

    new-array v3, v3, [Ljava/lang/Object;

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    :cond_0
    const v0, 0x4e6e6b28    # 1.0E9f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    .line 325
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1fB"

    new-array v3, v3, [Ljava/lang/Object;

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :cond_1
    const v0, 0x49742400    # 1000000.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_2

    .line 327
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1fM"

    new-array v3, v3, [Ljava/lang/Object;

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_2
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_3

    .line 329
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.1fK"

    new-array v3, v3, [Ljava/lang/Object;

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 331
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.0f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
