.class public Lcom/lidroid/xutils/db/table/Finder;
.super Lcom/lidroid/xutils/db/table/Column;
.source "Finder.java"


# instance fields
.field public db:Lcom/lidroid/xutils/DbUtils;

.field private final targetColumnName:Ljava/lang/String;

.field private final valueColumnName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/db/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 29
    const-class p1, Lcom/lidroid/xutils/db/annotation/Finder;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/lidroid/xutils/db/annotation/Finder;

    .line 30
    invoke-interface {p1}, Lcom/lidroid/xutils/db/annotation/Finder;->valueColumn()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/lidroid/xutils/db/table/Finder;->valueColumnName:Ljava/lang/String;

    .line 31
    invoke-interface {p1}, Lcom/lidroid/xutils/db/annotation/Finder;->targetColumn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Finder;->targetColumnName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .locals 1

    .line 91
    sget-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetColumnName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Finder;->targetColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetEntityType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getFinderTargetEntityType(Lcom/lidroid/xutils/db/table/Finder;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .locals 2

    .line 45
    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Finder;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Finder;->valueColumnName:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 47
    const-class v0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance p2, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-direct {p2, p0, p3}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Finder;Ljava/lang/Object;)V

    goto :goto_1

    .line 49
    :cond_0
    const-class v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 51
    :try_start_0
    new-instance p2, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-direct {p2, p0, p3}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Finder;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->getAllFromDb()Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 53
    invoke-virtual {p2}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 57
    :cond_1
    :try_start_1
    new-instance p2, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-direct {p2, p0, p3}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Finder;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->getFirstFromDb()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 59
    invoke-virtual {p2}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p2, 0x0

    .line 63
    :goto_1
    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Finder;->setMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 65
    :try_start_2
    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Finder;->setMethod:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 71
    :cond_2
    :try_start_3
    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Finder;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Finder;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
