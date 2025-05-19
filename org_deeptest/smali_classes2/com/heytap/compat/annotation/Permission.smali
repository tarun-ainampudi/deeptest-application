.class public interface abstract annotation Lcom/heytap/compat/annotation/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/heytap/compat/annotation/Permission;
        authStr = "NA"
        type = "NA"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final TYPE_EPONA:Ljava/lang/String; = "epona"

.field public static final TYPE_TINGLE:Ljava/lang/String; = "tingle"


# virtual methods
.method public abstract authStr()Ljava/lang/String;
.end method

.method public abstract type()Ljava/lang/String;
.end method
